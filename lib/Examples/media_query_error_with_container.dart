import 'package:flutter/material.dart';
/* in this dart file we Explain The Error will be
 occuer when i use media query in column */

class MediaQueryErrorWithContainer extends StatelessWidget {
  const MediaQueryErrorWithContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(), // when i use AppBar you get the Error
      body: Column(
        children: [
          Container(height: height / 3, color: Colors.grey),
          Container(height: height / 3, color: Colors.green),
          Container(height: height / 3, color: Colors.amber),
        ],
      ),
    );
  }
}
