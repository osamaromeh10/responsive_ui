import 'package:flutter/material.dart';
import 'package:responsive_ui/details_view.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: 16),
          color: Colors.green,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsView(numer: index + 1);
                  },
                ),
              );
            },
            child: ListTile(title: Text("${index + 1}")),
          ),
        );
      },
    );
  }
}