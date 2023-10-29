import 'package:flutter/material.dart';

import '../basic_responsive_a_exports.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackgroundColor,
      appBar: MyAppBar(),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4, // GridView의 itemCount 와 일치시킬 것.
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
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
