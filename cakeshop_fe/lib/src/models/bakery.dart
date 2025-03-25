import 'package:flutter/material.dart';
import 'cake.dart';

class Bakery {
  final int bakeryId;
  final String bakeryName;
  final String address;
  final String description;
  final int open;
  final int close;
  final String url;
  final List<Cake> cakes;

  const Bakery({required this.bakeryId, required this.bakeryName, 
  required this.address, required this.description, required this.open, required this.close,
  required this.url, this.cakes = const []});

  factory Bakery.fromJson(Map<String, dynamic> json) {
    
    return Bakery(
      bakeryId: json['BAKERY_ID'] ?? 0, // Ensure default value for null
      bakeryName: json['BAKERY_NAME'] ?? 'Unknown',
      address: json['ADDRESS'] ?? 'No address',
      description: json['DESCRIPTION'] ?? '',
      open: json['OPEN'] ?? 8,
      close: json['CLOSE'] ?? 20,
      url: json['URL'] ?? '',
      cakes: (json['cakes'] as List<dynamic>?)?.map((cake) => Cake.fromJson(cake)).toList() ?? [],
    );
  }}