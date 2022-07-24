import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/enums/theme_enums.dart';
import '../init/theme/theme_manager.dart';
import '../init/theme/types/dark_theme.dart';
import '../init/theme/types/light_theme.dart';

extension ThemeContextExtension on BuildContext {
  ThemeData get theme => watch<ThemeManager>().currentTheme;
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
