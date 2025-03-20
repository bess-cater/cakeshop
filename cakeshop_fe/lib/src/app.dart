import 'package:flutter/material.dart';
import 'screens/intro.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cakeshop',
      home: Intro(),
    );
  }

  
}