import 'package:flutter/material.dart';

import '../../extensions/theme_extensions.dart';
import '../../constants/enums/theme_enums.dart';
import 'interface_theme_manager.dart';

class ThemeNotifier extends ChangeNotifier implements IThemeManager {
  static ThemeNotifier? _instance;
  static ThemeNotifier get instance {
    _instance ??= ThemeNotifier._init();
    return _instance!;
  }

  ThemeNotifier._init();

  @override
  ThemeData currentTheme = ThemeEnums.LIGHT.generateTheme;
  ThemeEnums currentThemeEnum = ThemeEnums.LIGHT;

  @override
  void changeTheme(ThemeEnums themeType) {
    if(themeType != currentThemeEnum){
      currentThemeEnum = themeType;
      currentTheme = themeType.generateTheme;
      notifyListeners();
    }
    return;
  }


}