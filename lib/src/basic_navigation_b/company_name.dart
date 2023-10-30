import 'package:flutter/material.dart';

class CompanyName extends StatelessWidget {
  const CompanyName({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 70.0,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'P',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'ram',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
