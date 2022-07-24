import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/enums/theme_enums.dart';
import '../init/notifier/theme_notifier.dart';
import '../init/theme/dark_theme.dart';
import '../init/theme/light_theme.dart';

extension ThemeContextExtension on BuildContext {
  ThemeData get theme => watch<ThemeNotifier>().currentTheme;
}

extension ThemeEnumExtension on ThemeEnums {
  ThemeData get generateTheme {
    switch (this) {
      case ThemeEnums.DARK:
        return DarkTheme.instance.theme!;
      case ThemeEnums.LIGHT:
        return LightTheme.instance.theme!;
      default:
        return LightTheme.instance.theme!;
    }
  }
}
