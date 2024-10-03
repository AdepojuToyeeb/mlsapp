import 'package:flutter/material.dart';
import 'package:meals_app/screens/new_item.dart';
import 'package:meals_app/widgets/grocery_list.dart';

class ShoppingList extends StatefulWidget {
  const ShoppingList({super.key});

  @override
  State<ShoppingList> createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  void _addNewItem() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => const NewItemScreen(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping list"),
        actions: [
          IconButton(
            onPressed: _addNewItem,
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: const GroceryList(),
    );
  }
}
