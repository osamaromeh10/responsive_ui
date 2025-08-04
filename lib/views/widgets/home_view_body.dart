import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/desktop_layout.dart';
import 'package:responsive_ui/views/widgets/moblie_layout_dart';
import 'package:responsive_ui/views/widgets/tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: LayoutBuilder(
        builder: (context, constrains) {
          if (constrains.maxWidth < 600) {
            return MobileLayout();
          } else if (constrains.maxWidth < 900) {
            return TabletLayout();
          } else {
            return DeskTopLayout();
          }
        },
      ),
    );
  }
}
