import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';

class GroceryList extends StatelessWidget {
  const GroceryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyMeals.length,
      itemBuilder: (ctx, index) => ListTile(
        title: Text(dummyMeals[index].title),
        leading: Container(
          width: 24,
          height: 24,
          color: dummyMeals[index].categories[0].color,
        ),
        trailing: Text(
          dummyMeals[index].quantity.toString(),
        ),
      ),
    );
  }
}
