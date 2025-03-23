import 'package:firebase_auth/firebase_auth.dart'
    hide EmailAuthProvider, PhoneAuthProvider;
import 'package:firebase_core/firebase_core.dart';
import 'dart:async';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../firebase_options.dart';

class ApplicationState extends ChangeNotifier {
  bool _loggedIn = false;
  bool get loggedIn => _loggedIn;
  String _userName = ''; // Store the username
  String get userName => _userName;
  StreamSubscription<User?>? _authListener;

  ApplicationState() {
    init();
  }

  Future<void> init() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    listenAuthChanges(); // Start listening for auth changes
  }

    Future<void> listenAuthChanges() async {
    _authListener = FirebaseAuth.instance.authStateChanges().listen((User? user) async {
      if (user == null) {
        print('========================================');
        print('User is currently signed out!');
        _loggedIn = false;
      } else {
        print('========================================');
        print('User is signed in!');
        _loggedIn = true;
        DocumentSnapshot userDoc = await FirebaseFirestore.instance
            .collection('users')
            .doc(user.uid)
            .get();

        if (userDoc.exists) {
          _userName = userDoc['username']; // Set username from Firestore
        }
      }
      notifyListeners(); // Notify UI to update
    });
  }

  @override
  void dispose() {
    _authListener?.cancel(); // Stop listening when object is destroyed
    super.dispose();
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}