import 'package:flutter/material.dart';

class SloveIconErrorWithFlexible extends StatelessWidget {
  const SloveIconErrorWithFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            // case One: Flexible mean take the Full Size.
            // case Two: if the Widgets more in Screen Flexible.
            child: FittedBox(child: Icon(Icons.person, size: 300)),
            /* 
            using of Fitted Box in This Case it to wrap the child
             in his Parent spaceif you need to get the child widget 
             in small you can use attribute.

             call  fit: BoxFit.ScaleDown 
             */
          ),

          Container(height: 150, color: Colors.grey),
          Container(height: 150, color: Colors.green),
          Container(height: 150, color: Colors.amber),
          Container(height: 100, color: Colors.red),
        ],
        // in This case: i have a lot of Widgets in Screen i need to Fit this icon in her Square
      ),
    );
  }
}
