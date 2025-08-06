import 'package:flutter/material.dart';
import 'package:cakeshop_fe/core/config/routes/router.dart';



void main() async{
  
  runApp(
    MyApp(),
    );
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}