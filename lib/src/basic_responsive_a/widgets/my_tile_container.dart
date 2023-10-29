import 'package:flutter/material.dart';

class MyTileContainer extends StatelessWidget {
  const MyTileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        color: Colors.lightBlueAccent,
      ),
    );
  }
}
