import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/custom_item.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,

          itemCount: 100,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 16),
              child: AspectRatio(aspectRatio: 1, child: CustomItem()),
            );
          },
        ),
      ),
    );
  }
}
