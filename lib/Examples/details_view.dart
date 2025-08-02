import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.numer});
  final int numer;
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_string_interpolations
    return Scaffold(
      appBar: AppBar(), // to Show the Back Button By Defalut
      body: Center(child: Text(numer.toString())),
    );
  }
}
