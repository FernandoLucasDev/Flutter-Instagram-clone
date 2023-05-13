import 'package:flutter/material.dart';
import '../utils/dimentions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;     //create a instance of one widget
  final Widget mobileScreenLayout;

  const ResponsiveLayout(
      {Key? key,
      required this.webScreenLayout,
      required this.mobileScreenLayout}) // requires this widget where we call this class
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > webScreenSize) { // webScreenSize is defined in utils/dimentions.dart
          return webScreenLayout;
        }
        return mobileScreenLayout; // case window screen be lower than webScreenSize
      },
    );
  }
}
