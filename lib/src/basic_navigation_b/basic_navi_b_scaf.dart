import 'package:flutter/material.dart';

import './basic_navigation_b_exports.dart';

class BasicNaviBScaffold extends StatelessWidget {
  const BasicNaviBScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: const Stack(
          children: [
            MyNavigationBar(),
          ],
        ),
      ),
    );
  }
}
