import 'package:flutter/material.dart';
import 'package:myapp/theme/theme.dart';

import 'screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go DevRel',
      theme: theme(),
      home: const HomePage(),
    );
  }
}
