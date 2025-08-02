import 'package:flutter/material.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 16),
                color: Colors.green,
                child: GestureDetector(
                  onTap: () {
                    number = index + 1;
                    setState(() {});
                  },
                  child: ListTile(title: Text("${index + 1}")),
                ),
              );
            },
          ),
        ),
        Expanded(
          child: SizedBox(child: Center(child: Text(number.toString()))),
        ), // List view in Row must Expanded or Give a Height for this Row
      ],
    );
  }
}
