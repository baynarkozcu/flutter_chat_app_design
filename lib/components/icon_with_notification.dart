import 'package:flutter/material.dart';

import '../core/constants/app/app_colors.dart';

class IconWithNotification extends StatelessWidget {
  const IconWithNotification({
    Key? key,
    this.isAlert,
    required this.icon, this.isActive = false,
  }) : super(key: key);

  final IconData icon;
  final bool? isActive;
  final bool? isAlert;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Icon(icon, size: 24, color: isActive! ? AppColors.primary : AppColors.text),
        if (isAlert ?? false)
          const Positioned(
            top: -5,
            right: -5,
            child: CircleAvatar(
              radius: 7,
              backgroundColor: AppColors.alert,
            ),
          )
      ],
    );
  }
}
