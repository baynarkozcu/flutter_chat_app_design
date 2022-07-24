import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({
    Key? key,
  }) : super(key: key);

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
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(10),
                  bottom: Radius.circular(
                    25,
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 7,
                  )
                ],
                color: Colors.grey,
                // image: const DecorationImage(
                //   image: AssetImage('assets/images/user_profile_image.png'),
                //   fit: BoxFit.cover,
                // ),
              ),
            ),
            const SizedBox(height: 25),
            const Text("Username"),
            const Text("Username"),
          ],
        ),
        Positioned(
          top: 100,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
