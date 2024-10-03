import 'package:flutter/material.dart';
import 'package:meals_app/widgets/grocery_list.dart';

class ShoppingList extends StatelessWidget {
  const ShoppingList({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping list"),
      ),
      body: const GroceryList(),
    );
  }
}
