import 'package:flutter/material.dart';

import '../../constants/enums/theme_enums.dart';

abstract class IThemeManager {
  late ThemeData currentTheme;

  void changeTheme(ThemeEnums themeType);
}
