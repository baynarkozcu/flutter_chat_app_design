import 'package:chat_app_design/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baynarkozcu Chat App',
      theme: context.theme,
      home: const HomePage(),
    );
  }
}