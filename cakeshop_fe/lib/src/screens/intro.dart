import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'sign-in.dart';
import 'sign-up.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'intro.dart';
import '../providers/authprovider.dart';
import 'package:provider/provider.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});
  
  @override
  Widget build(BuildContext context) {
    final appState = context.watch<ApplicationState>();
    return Scaffold(
      appBar: AppBar(title: appState.loggedIn
            ? Text(
                'Hi, ${appState.userName}', // Display the username
                style: TextStyle(fontSize: 24),
              )
            : Text(
                'Please log in to continue.',
                style: TextStyle(fontSize: 24),
              ),),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Cake Shop", 
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 189, 110, 174),
              fontFamily: 'Lucy',
              fontSize: 64.0)),
            Lottie.asset('assets/lottie/cake.json',
            width: 200,
            height: 200,
            fit: BoxFit.fill,),
          

          Padding(padding: EdgeInsets.all(20.0)),
          ElevatedButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignIn()),
            );
          }, child: 
          Text("Sign in")),
          Padding(padding: EdgeInsets.all(12.0)),
          ElevatedButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUp()),
            );
          }, child: 
          Text("Sign up")),
          Padding(padding: EdgeInsets.all(12.0)),
          ElevatedButton(onPressed:  () async {
            await FirebaseAuth.instance.signOut();
            context.read<ApplicationState>().listenAuthChanges();
          }, child: 
          Text("Sign out")),
          ],),)
    );
  }
}

// 