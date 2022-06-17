import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatelessWidget {
  final _storyController = StoryController();
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> storyItems = [
      StoryItem.text(
          title:
              'This is my flutter journal first time make a simple whatsapp clone',
          backgroundColor: Colors.green),
      StoryItem.pageImage(
          url: 'https://images.pexels.com/photos/632551/pexels-photo-632551.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          controller: _storyController),
      StoryItem.pageImage(
          url: 'https://images.pexels.com/photos/2978564/pexels-photo-2978564.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          controller: _storyController, imageFit: BoxFit.contain),
    ];

    return Material(
      child: StoryView(
        storyItems: storyItems,
        controller: controller,
        inline: false,
        repeat: true,
      ),
    );
  }
}
