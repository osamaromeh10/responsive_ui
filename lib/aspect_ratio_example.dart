import 'package:flutter/material.dart';

class AspectRatioExample extends StatelessWidget {
  const AspectRatioExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AspectRatio(
        aspectRatio: 5 / 1, // mean the Ratio from the width to height 5:1
        // the width = 5 height
        child: Container(color: Colors.red),
      ),
    );
  }
}
