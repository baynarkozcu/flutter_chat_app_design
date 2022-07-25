import 'package:chat_app_design/core/extensions/theme_extensions.dart';
import 'package:chat_app_design/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/init/theme/theme_manager.dart';
import 'feature/home/view/home_view.dart';
import 'feature/login/view/login_view.dart';
import 'feature/master_page.dart';

void main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      home: const LoginView(),
    );
  }
}
