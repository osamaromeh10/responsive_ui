import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/responsive_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: ResponsiveText()),
    );
  }
}
