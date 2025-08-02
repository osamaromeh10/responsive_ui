import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffD8D8D8),
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(Icons.menu, color: Colors.white),
        ),
        body: HomeViewBody(),
      ),
    );
  }
}
