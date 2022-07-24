import 'package:flutter/material.dart';

enum TabbarViewEnums { HOME, MESSAGE, SETTINGS }

extension TabbarViewExtension on TabbarViewEnums {
  IconData get iconData {
    switch (this) {
      case TabbarViewEnums.HOME:
        return Icons.home;
      case TabbarViewEnums.MESSAGE:
        return Icons.messenger;
      case TabbarViewEnums.SETTINGS:
        return Icons.settings;
    }
  }
}
