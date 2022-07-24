import 'package:chat_app_design/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/init/theme/theme_manager.dart';
import 'feature/home/view/home_view.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ThemeManager.instance),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baynarkozcu Chat App',
      theme: context.theme,
      home: HomeView(),
    );
  }
}
