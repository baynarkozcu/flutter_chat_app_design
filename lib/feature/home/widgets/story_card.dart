import 'package:flutter/material.dart';

import '../../../core/constants/app/app_colors.dart';
import '../model/story_model.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({
    Key? key,
    required this.story,
  }) : super(key: key);

  final StoryModel story;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            Container(
              height: 120,
              width: 80,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(10),
                  bottom: Radius.circular(
                    25,
                  ),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 7,
                  )
                ],
                image: DecorationImage(
                  image: NetworkImage(story.storyPhotoUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Text(story.userName),
            Text(story.userSurname),
          ],
        ),
        Positioned(
          top: 100,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(story.userPhotoUrl),
              ),
              border: Border.all(
                color: AppColors.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
