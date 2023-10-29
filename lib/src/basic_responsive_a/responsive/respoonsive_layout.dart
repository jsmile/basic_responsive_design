import 'package:flutter/material.dart';

/// 현재 창의 크기에 따라 알맞은 화면크기( Scaffold ) 반환
class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  const ResponsiveLayout({
    Key? key,
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // iPhone 크기 기준
        if (constraints.maxWidth < 500) {
          return mobileScaffold;
        } else if (constraints.maxWidth < 1100) {
          return tabletScaffold;
        } else {
          return desktopScaffold;
        }
      },
    );
  }
}
