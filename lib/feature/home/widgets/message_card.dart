import 'package:chat_app_design/core/constants/app/app_colors.dart';
import 'package:chat_app_design/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: const CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage('https://picsum.photos/200/200'),
        ),
        title: Text('Username', style: context.theme.textTheme.headline3),
        subtitle: const Text(
          'This is a story about something a story about something',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(DateFormat('hh:mm').format(DateTime.now()),
                style: context.theme.textTheme.caption),
            // const Icon(Icons.done),
            const Icon(
              Icons.done_all,
              color: AppColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}
