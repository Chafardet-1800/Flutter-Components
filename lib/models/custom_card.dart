
import 'package:flutter/material.dart';

class CustomCardModel {

  final String imageUrl;

  final String? imageName;

  final IconData icon;

  final String title;

  final String? subtitle;


  CustomCardModel({
    this.imageName, 
    required this.imageUrl,
    required this.icon, 
    required this.title, 
    required this.subtitle, 
  });

}