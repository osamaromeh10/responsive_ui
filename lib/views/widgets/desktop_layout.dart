import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/custom_desktop_widget.dart';
import 'package:responsive_ui/views/widgets/custom_drawer.dart';
import 'package:responsive_ui/views/widgets/tablet_layout.dart';

class DeskTopLayout extends StatelessWidget {
  const DeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TabletLayout(),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: CustomDesktopWidget(),
          ),
        ),
      ],
    );
  }
}
