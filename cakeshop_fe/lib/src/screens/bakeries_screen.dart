import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import '../providers/authprovider.dart';
import 'package:provider/provider.dart';
import '../models/bakery.dart';
import 'cake_screen.dart';

Future<List<Bakery>> fetchBakery() async {
  final response = await http.get(
    Uri.parse('http://10.0.2.2:8080/bakery/fetch'),
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    List<dynamic> jsonList = json.decode(response.body);

    return jsonList.map((json) => Bakery.fromJson(json)).toList();
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}




class Bakeries extends StatefulWidget {
  const Bakeries({super.key});

  @override
  State<Bakeries> createState() => _BakeriesState();
}

class _BakeriesState extends State<Bakeries> {
  // Ensure futureBakery is initialized properly before use
  late Future<List<Bakery>> futureBakery;

  @override
  void initState() {
    super.initState();
    // Initialize futureBakery by calling fetchBakery() method
    futureBakery = fetchBakery();
  }

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<ApplicationState>();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: appState.loggedIn
            ? Text(
                'Hi, ${appState.userName}', // Display the username
                style: TextStyle(fontSize: 24),
              )
            : Text(
                'Please log in to continue.',
                style: TextStyle(fontSize: 24),
              ),),
        body: FutureBuilder<List<Bakery>>(
          future: futureBakery,  // Use futureBakery here
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              // Check if data is available, then build the UI with the list
              List<Bakery> bakeries = snapshot.data!;

              return ListView.builder(
                itemCount: bakeries.length,
                itemBuilder: (context, index) {
                  Bakery bakery = bakeries[index];
                  return ListTile(
                    contentPadding: const EdgeInsets.all(8.0),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(bakery.url), // Use the URL for the image
                    ),
                    title: Text(bakery.bakeryName, style: const TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(bakery.address),
                        const SizedBox(height: 4),
                        Text(
                          'Open: ${bakery.open} - Close: ${bakery.close}',
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BakeryScreen(bakeryId: bakery.bakeryId),
                        ),
                      );// Handle tap, maybe show more details about the bakery
                    },
                  );
                },
              );
            } else {
              return const Center(child: Text('No data available'));
            }
          },
        ),
      ),
    );
  }
}