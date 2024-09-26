import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories.dart';
import 'package:meals_app/screens/meals.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;

  void _selectPage(index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = const CategoriesScreen();
    var activePageTitle = 'Categories';

    if (_selectedScreenIndex == 1) {
      activeScreen = const MealsScreen(meals: [], title: 'Favorites');
      activePageTitle = 'Favorites';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      body: activeScreen,
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.set_meal), label: "Categories"),
        BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favorites")
      ], onTap: _selectPage),
    );
  }
}
