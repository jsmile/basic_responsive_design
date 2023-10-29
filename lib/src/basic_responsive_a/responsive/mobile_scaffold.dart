import 'package:flutter/material.dart';

import '../basic_responsive_a_exports.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackgroundColor,
      appBar: MyAppBar(),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1, // 가로 세로가 같은 크기의 세로 높이 지정
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return const MyPaddingContainer();
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const MyTileContainer();
              },
            ),
          ),
        ],
      ),
    );
  }
}
