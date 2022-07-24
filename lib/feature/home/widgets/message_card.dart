import 'package:chat_app_design/core/constants/app/app_colors.dart';
import 'package:chat_app_design/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/chat_model.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({
    Key? key,
    required this.chat,
  }) : super(key: key);

  final ChatModel chat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(chat.userPhotoUrl),
        ),
        title: Text(chat.userName, style: context.theme.textTheme.headline3?.copyWith(
              color:
                  chat.messageStatus == MessageStatus.sending ? AppColors.primary : AppColors.text,
        )),
        subtitle: Text(
          chat.lastMessage,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: chat.messageStatus == MessageStatus.sending ? AppColors.primary : AppColors.text,
          ),
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(DateFormat('hh:mm').format(chat.lastMessageTime),
                style: context.theme.textTheme.bodyText2),
            Icon(
              chat.messageStatus == MessageStatus.seen
                  ? Icons.done_all
                  : chat.messageStatus == MessageStatus.sent
                      ? Icons.done
                      : Icons.access_time,
              color: AppColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}
