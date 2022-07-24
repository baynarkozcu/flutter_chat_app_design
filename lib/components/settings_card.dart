import 'package:chat_app_design/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

import '../core/constants/app/app_colors.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({
    Key? key,
    required this.color,
    required this.title,
    required this.description,
    required this.icon,
    required this.widget,
    this.isLast = false,
  }) : super(key: key);

  final Color color;
  final String title;
  final String description;
  final IconData icon;
  final Widget widget;
  final bool? isLast;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              icon,
              size: 36,
            ),
          ),
          title: Text(
            title,
            style: context.theme.textTheme.headline3,
          ),
          subtitle: Text(
            description,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: context.theme.textTheme.bodyText1,
          ),
          trailing: widget,
        ),
        if (isLast != null && isLast == false)
          const Divider(
            color: AppColors.primary,
            indent: 20,
            endIndent: 20,
          )
      ],
    );
  }
}
