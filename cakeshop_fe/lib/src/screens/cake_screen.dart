import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import '../models/bakery.dart';
import '../models/cake.dart';
import '../widgets/bakery_desc.dart';
import '../widgets/cake_card.dart';


Future<Bakery> fetchBakeryandCakes(bakery_id) async {
  final response = await http.get(
    Uri.parse('http://10.0.2.2:8080/bakery/$bakery_id'),
  );
  if (response.statusCode ==200){
    Map<String, dynamic> bakeryJson = jsonDecode(response.body);
    print("Raw JSON response: ${response.body}");
    
    // Convert Map into Bakery object
    return Bakery.fromJson(bakeryJson);
  }
  throw Exception('Failed to load bakery with id $bakery_id');
}



class BakeryScreen extends StatefulWidget {
  final int bakeryId;
  const BakeryScreen({super.key, required this.bakeryId});

  @override
  State<BakeryScreen> createState() => _BakeryScreenState();
}

class _BakeryScreenState extends State<BakeryScreen> {
  // Ensure futureBakery is initialized properly before use
  late Future<Bakery> currentBakery;

  @override
  void initState() {
    super.initState();
    // Initialize futureBakery by calling fetchBakery() method
    currentBakery = fetchBakeryandCakes(widget.bakeryId);
  }

 @override
  Widget build(BuildContext context) {
    return FutureBuilder<Bakery>(
      future: currentBakery,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            appBar: AppBar(title: const Text("Loading...")),
            body: const Center(child: CircularProgressIndicator()),
          );
        } else if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(title: const Text("Error")),
            body: Center(child: Text('Error: ${snapshot.error}')),
          );
        } else if (!snapshot.hasData) {
          return Scaffold(
            appBar: AppBar(title: const Text("No Data")),
            body: const Center(child: Text("No data found")),
          );
        }

        Bakery bakery = snapshot.data!;

        return Scaffold(
          appBar: AppBar(title: Text(bakery.bakeryName)), // Dynamic title
          body: SingleChildScrollView(
            child: Column(
              children: [
                BakeryDisc(bakery: bakery), // Bakery Info
                const SizedBox(height: 20),
                ...bakery.cakes.map((cake) => CakeCard(cake: cake)).toList(), // Cake List
              ],
            ),
          ),
        );
      },
    );
  }
}