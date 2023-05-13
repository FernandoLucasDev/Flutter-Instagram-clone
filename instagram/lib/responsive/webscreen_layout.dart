// here I create a widget that we'll return in main.dart
// in responsive_layout_screen.dart I define if this wedget will be returned or not

import 'package:flutter/material.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("This is WebScreenLayout"),),
    );
  }
}