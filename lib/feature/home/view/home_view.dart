import 'package:chat_app_design/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

import '../widgets/add_story_card.dart';
import '../widgets/story_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Baynarkozcu Chat App', style: context.theme.textTheme.headline1),
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: const [
                  Text("Stories"),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(Icons.history),
                  ),
                  Text("All Stories"),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const AddStoryCard();
                }
                return const StoryCard();
              },
            ),
          )),
        ],
      ),
    );
  }
}


