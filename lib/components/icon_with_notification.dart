import 'package:flutter/material.dart';

import '../core/constants/app/app_colors.dart';

class IconWithNotification extends StatelessWidget {
  const IconWithNotification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: const [
        Icon(Icons.messenger, size: 24),
        Positioned(
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
