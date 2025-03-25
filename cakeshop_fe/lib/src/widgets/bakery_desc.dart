import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import '../models/bakery.dart';


class BakeryDisc extends StatelessWidget{
  final Bakery bakery;
  const BakeryDisc({super.key, required this.bakery});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            SizedBox(
        width: 100.0,
        height: 125.0,
        child: Image.network(bakery.url, fit: BoxFit.fill,),
      ),
      Expanded(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(bakery.bakeryName),
          Text(bakery.description)
        ],
      ))
          ],)
      ],


    );
  }

}