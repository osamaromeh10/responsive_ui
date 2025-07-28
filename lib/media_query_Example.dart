import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var heightScreen = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    var widthScreen = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: heightScreen * 0.2, // 20% of the screen height

          decoration: BoxDecoration(color: Colors.amber),
        ),
      ],
    );
  }
}
// The Usage of MediaQuery to Know screen dimensions and use them in the widget tree. 