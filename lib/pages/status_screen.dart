import 'package:flutter/material.dart';
import 'story_page_view.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff2f2f2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            color: Colors.white,
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://www.pexels.com/photo/black-street-light-turned-on-during-night-time-11635803/'),
                    ),
                    Positioned(
                        bottom: 0.0,
                        right: 1.0,
                        child: Container(
                          height: 20,
                          width: 20,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.green, shape: BoxShape.circle),
                        ))
                  ],
                ),
                title: Text(
                  'My Status',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Tap to add status update'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Viewed Status',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.white,
              child: ListView(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://randomuser.me/api/portraits/women/66.jpg'),
                    ),
                    title: Text(
                      'Jeniffer',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Today, 19:20 PM'),
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => StoryPageView())),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
