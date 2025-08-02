import 'package:flutter/material.dart';

class FittedBoxExample extends StatelessWidget {
  const FittedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    var imageUrls = [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWoQPrJvAncDxIlbv-IXDjOL9EEgkUU8qfVw&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWoQPrJvAncDxIlbv-IXDjOL9EEgkUU8qfVw&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWoQPrJvAncDxIlbv-IXDjOL9EEgkUU8qfVw&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWoQPrJvAncDxIlbv-IXDjOL9EEgkUU8qfVw&s",
    ];
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // mean three items per row
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemBuilder: (context, index) {
          return FittedBox(
            fit: BoxFit.contain,
            child: Image.network(imageUrls[index]),
          );
        },
      ),
    );
  }
}
