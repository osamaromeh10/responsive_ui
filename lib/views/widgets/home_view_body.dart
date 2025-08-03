import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/custom_list_view.dart';
import 'package:responsive_ui/views/widgets/custom_sliver_grid.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          CustomSliverGrid(),
          CustomSliverListView(),
        ],
      ),
    );
  }
}
