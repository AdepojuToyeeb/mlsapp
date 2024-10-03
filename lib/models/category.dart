import 'package:flutter/material.dart';

enum Categories {
  vegetables,
  fruit,
  meat,
  dairy,
  carbs,
  sweets,
  spices,
  convenience,
  hygiene,
  other
}

class Category {
  const Category({
    this.id,
    required this.title,
    this.color = Colors.orange,
  });
  final String? id;
  final String title;
  final Color color;
}