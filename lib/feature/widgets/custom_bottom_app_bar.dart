import 'package:flutter/material.dart';

import '../../components/icon_with_notification.dart';
import '../../core/constants/app/app_colors.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
            ),
          ],
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              IconWithNotification(),
              Icon(Icons.home, size: 24, color: AppColors.text),
              Icon(Icons.storefront_sharp, size: 24, color: AppColors.text),
              Icon(Icons.settings, size: 24, color: AppColors.text),
            ],
          ),
        ));
  }
}
