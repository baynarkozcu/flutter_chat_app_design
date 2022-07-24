import 'package:flutter/material.dart';

import '../../components/icon_with_notification.dart';

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
              IconWithNotification(
                icon: Icons.messenger,
                isActive: true,
                isAlert: true,
              ),
              IconWithNotification(icon: Icons.home),
              IconWithNotification(icon: Icons.storefront_sharp),
              IconWithNotification(icon: Icons.settings),
            ],
          ),
        ));
  }
}
