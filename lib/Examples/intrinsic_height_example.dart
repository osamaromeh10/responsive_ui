import 'package:flutter/material.dart';

class IntrinsicHeightExample extends StatelessWidget {
  const IntrinsicHeightExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 250),

            IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      child: SizedBox(height: 300),
                    ),
                  ),
                  //  3la 7assab el child for Row
                  SizedBox(width: 18),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(child: Container(color: Colors.black)),
                        Expanded(child: Container(color: Colors.amber)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
