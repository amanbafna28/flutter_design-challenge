import 'package:flutter/material.dart';
import 'package:my_user_interfaces/pages/fall_guys_page.dart';

void main() async{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FallGuysPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
