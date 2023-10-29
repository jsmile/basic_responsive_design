import 'package:flutter/material.dart';

import '../basic_responsive_a_exports.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackgroundColor,
      appBar: MyAppBar(),
      body: Row(
        children: [
          const MyDrawer(),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                AspectRatio(
                  // GridView의 crossAxisCount 와 일치시킬 것 : 비슷한 정사각형 모양 .
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
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
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue[300],
            ),
          ),
        ],
      ),
    );
  }
}
