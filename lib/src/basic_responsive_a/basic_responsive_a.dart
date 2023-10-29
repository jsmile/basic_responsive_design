import 'package:flutter/material.dart';

import './basic_responsive_a_exports.dart';

class BasicResponsiveA extends StatelessWidget {
  final String title;

  const BasicResponsiveA({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: MobileScaffold(),
      tabletScaffold: TabletScaffold(),
      desktopScaffold: DesktopScaffold(),
    );
  }
}
