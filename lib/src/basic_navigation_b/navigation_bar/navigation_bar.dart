import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../basic_navigation_b_exports.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: MediaQuery.sizeOf(context).height,
        width: 100.0,
        color: Colors.blue[900],
        child: const Stack(
          children: [
            CompanyName(),
            Align(
              alignment: Alignment.center,
              child: NavBar(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: NavBarItem(
                icon: Feather.log_out,
                active: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
