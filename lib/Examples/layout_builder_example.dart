import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_ui/Examples/desktop_layout.dart';
import 'package:responsive_ui/Examples/mobile_lauout.dart';

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        log(
          constraints.maxWidth.toString(),
        ); // this log show me the width of my device

        if (constraints.maxWidth <= 500) {
          // <= 500 : Smaller Than or Equal 500 and 500 mean the Break Point for The Mobile
          return MobileLayout();
        } else {
          return DesktopLayout();
        }
      },
    );
  }
}
