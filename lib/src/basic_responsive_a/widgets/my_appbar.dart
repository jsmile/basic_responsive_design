import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  MyAppBar({super.key});

  @override
  Color? get backgroundColor => super.backgroundColor ?? Colors.grey[900];
  @override
  IconThemeData? get iconTheme =>
      super.iconTheme ?? IconThemeData(color: Colors.grey[300]);
}
