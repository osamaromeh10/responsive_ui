import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/moblie_layout_dart';
import 'package:responsive_ui/views/widgets/tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: LayoutBuilder(
        builder: (context, constrains) {
          if (constrains.maxWidth > 600) {
            return TabletLayout();
          } else {
            return MobileLayout();
          }
        },
      ),
    );
  }
}
