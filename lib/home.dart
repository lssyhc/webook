import 'package:flutter/material.dart';
import 'package:flutter_application_1/layout_navbar.dart';

class HomePage extends StatelessWidget {
  static const routeName = "/HomePage";

  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutNavigationBar(),
    );
  }
}
