import 'package:flutter/material.dart';

import '../../../base/base_theme.dart';
import '../../../constants/app/app_colors.dart';

class DarkTheme extends BaseTheme {
  static DarkTheme? _instance;
  static DarkTheme get instance {
    _instance ??= DarkTheme._init();
    return _instance!;
  }

  DarkTheme._init();

  @override
  ThemeData? get theme => ThemeData.dark();

  // @override
  // ThemeData? get theme => ThemeData().copyWith(
  //       brightness: Brightness.dark,
  //       primaryColor: AppColors.primary,
  //       backgroundColor: AppColors.background,
  //       scaffoldBackgroundColor: AppColors.background,
  //       textTheme: const TextTheme(
  //         headline1: TextStyle(
  //           color: AppColors.text,
  //         ),
  //         headline2: TextStyle(
  //           color: AppColors.text,
  //         ),
  //         headline3: TextStyle(
  //           color: AppColors.text,
  //           fontWeight: FontWeight.bold,
  //         ),
  //         headline4: TextStyle(
  //           color: AppColors.text,
  //         ),
  //         headline5: TextStyle(
  //           color: AppColors.text,
  //         ),
  //         headline6: TextStyle(
  //           color: AppColors.text,
  //         ),
  //         bodyText1: TextStyle(
  //           color: AppColors.text,
  //         ),
  //         bodyText2: TextStyle(
  //           color: AppColors.text,
  //         ),
  //         button: TextStyle(
  //           color: AppColors.darkText,
  //           fontWeight: FontWeight.bold,
  //         ),
  //       ),
  //       appBarTheme: const AppBarTheme(
  //         color: Colors.transparent,
  //         centerTitle: true,
  //         elevation: 0,
  //         // iconTheme: IconThemeData(color: ApplicationColors.accentColor),
  //         titleTextStyle: TextStyle(
  //           color: AppColors.primary,
  //           fontWeight: FontWeight.bold,
  //         ),
  //       ),
  //       floatingActionButtonTheme: const FloatingActionButtonThemeData(
  //         backgroundColor: AppColors.primary,
  //         // foregroundColor: ApplicationColors.bgColor,
  //       ),
  //       elevatedButtonTheme: ElevatedButtonThemeData(
  //         style: ElevatedButton.styleFrom(
  //           primary: AppColors.primary,
  //           alignment: Alignment.center,
  //         ),
  //       ),
  //       textButtonTheme: TextButtonThemeData(
  //           style: TextButton.styleFrom(
  //         primary: AppColors.primary,
  //         alignment: Alignment.center,
  //       )),
  //       iconTheme: const IconThemeData(
  //         // color: ApplicationColors.bgColor,
  //         size: 16,
  //       ),
  //       cardTheme: CardTheme(
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(12),
  //         ),
  //         // color: ApplicationColors.accentColor,
  //       ),
  //       dividerTheme: const DividerThemeData(
  //         // color: ApplicationColors.accentColor,
  //         endIndent: 10,
  //         indent: 10,
  //       ),
  //       inputDecorationTheme: const InputDecorationTheme().copyWith(
  //         border: OutlineInputBorder(
  //           borderRadius: BorderRadius.circular(12),
  //           borderSide: BorderSide.none,
  //         ),
  //         enabledBorder: OutlineInputBorder(
  //           borderRadius: BorderRadius.circular(12),
  //           borderSide: BorderSide.none,
  //         ),
  //         filled: true,
  //         fillColor: AppColors.primary,
  //         // prefixIconColor: ApplicationColors.accentColor,
  //         // suffixIconColor: ApplicationColors.accentColor,
  //         errorMaxLines: 5,
  //         // iconColor: ApplicationColors.accentColor,
  //       ),
  //       progressIndicatorTheme: const ProgressIndicatorThemeData(
  //           // color: ApplicationColors.accentColor,
  //           ),
  //     );
}
