import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'custom_side_navi_exports.dart';

class CustomSideNaviScaffold extends StatefulWidget {
  const CustomSideNaviScaffold({super.key});

  @override
  State<CustomSideNaviScaffold> createState() => _CustomSideNaviScaffoldState();
}

List<bool> selected = [true, false, false, false, false];

class _CustomSideNaviScaffoldState extends State<CustomSideNaviScaffold> {
  final List<IconData> _icons = [
    Feather.wind,
    Feather.list,
    Feather.monitor,
    Feather.lock,
    Feather.mail,
  ];

  /// 전체 및 선택 시 배경색
  final Color _totalBackgroundColor = Colors.yellow[50]!;

  /// 네비게이션 바 배경색
  final Color _navBarBackgroundColor = Colors.blue[400]!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            // 전체 배경색 역할
            color: _totalBackgroundColor,
          ),
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: 101.0,
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: _navBarBackgroundColor,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 110,
                  child: Column(
                    children: [
                      ..._icons
                          .map(
                            (e) => NavBarItem(
                              icon: e,
                              selected: selected[_icons.indexOf(e)],
                              onTap: () {
                                setState(
                                  () {
                                    select(_icons.indexOf(e));
                                  },
                                );
                              },
                              forwardColor: _totalBackgroundColor,
                              backwardColor: _navBarBackgroundColor,
                            ),
                          )
                          .toList(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void select(int n) {
    for (int i = 0; i < 5; i++) {
      if (i == n) {
        selected[i] = true;
      } else {
        selected[i] = false;
      }
    }
  }
}
