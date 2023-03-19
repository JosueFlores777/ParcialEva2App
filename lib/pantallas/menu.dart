import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:parcialeva2_2501762019_2508782019/menu/Recipes.dart';
import 'package:parcialeva2_2501762019_2508782019/menu/Account.dart';
import 'package:parcialeva2_2501762019_2508782019/menu/plans.dart';
import 'package:parcialeva2_2501762019_2508782019/menu/Groceries.dart';

class Menu1 extends StatefulWidget {
  const Menu1({super.key});

  @override
  State<Menu1> createState() => _Menu1State();
}

class _Menu1State extends State<Menu1> {
  @override
  int _selectedIndex = 0;

  void _navigateBottonBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _paginas = [Recipes(), plans(), groceries(), Account()];

  Widget build(BuildContext context) {
    return Scaffold(
      body: _paginas[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _navigateBottonBar,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.food_bank_outlined), label: 'Recipes'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Plans'),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_grocery_store_outlined),
                label: 'Groceries'),
            BottomNavigationBarItem(
                icon: Icon(LineIcons.userCircle), label: 'Account'),
          ]),
    );
  }
}
