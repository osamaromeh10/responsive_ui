import 'package:flutter/material.dart';

class SloveIconErrorWithFlexible extends StatelessWidget {
  const SloveIconErrorWithFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            // case One: Flexible mean take the Full Size
            // case Two: if the Widgets more in Screen Flexible
            child: Icon(Icons.person, size: 300),
          ),

          Container(height: 150, color: Colors.grey),
          Container(height: 150, color: Colors.green),
          Container(height: 150, color: Colors.amber),
          Container(height: 100, color: Colors.red),
        ],
        // in This case
        // i have a lot of Widgets in Screen i need to Fit this icon in her Square
      ),
    );
  }
}
