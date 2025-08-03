import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/custom_item_two.dart';

class CustomSliverListView extends StatelessWidget {
  const CustomSliverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 16),
          child: CustomItemTwo(),
        );
      },
    );
  }
}
