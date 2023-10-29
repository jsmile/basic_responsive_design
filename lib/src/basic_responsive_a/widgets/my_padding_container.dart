import 'package:flutter/material.dart';

class MyPaddingContainer extends StatelessWidget {
  const MyPaddingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.blue,
      ),
    );
  }
}
