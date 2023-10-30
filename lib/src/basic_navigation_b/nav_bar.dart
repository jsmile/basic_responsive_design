import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import './nav_bar_item.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final List<bool> _selected = [true, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.0,
      child: Column(
        children: [
          NavBarItem(
            icon: Feather.home,
            active: _selected[0],
            touched: () {
              setState(() {
                select(0);
              });
            },
          ),
          NavBarItem(
            icon: Feather.archive,
            active: _selected[1],
            touched: () {
              setState(() {
                select(1);
              });
            },
          ),
          NavBarItem(
            icon: Feather.folder,
            active: _selected[2],
            touched: () {
              setState(() {
                select(2);
              });
            },
          ),
          NavBarItem(
            icon: Feather.message_square,
            active: _selected[3],
            touched: () {
              setState(() {
                select(3);
              });
            },
          ),
          NavBarItem(
            icon: Feather.settings,
            active: _selected[4],
            touched: () {
              setState(() {
                select(4);
              });
            },
          ),
        ],
      ),
    );
  }

  void select(int n) {
    for (int i = 0; i < 5; i++) {
      (i == n) ? _selected[i] = true : _selected[i] = false;
    }
  }
}
