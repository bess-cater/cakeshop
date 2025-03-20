import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Cake Shop", 
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blue,
              fontFamily: 'Lucy')),
            Lottie.asset('assets/cake.json',
            width: 200,
            height: 200,
            fit: BoxFit.fill,),
          ],),)
    );
  }
}