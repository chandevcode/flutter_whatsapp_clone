import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:whatsapp_clone/pages/call_screen.dart';
import 'package:whatsapp_clone/pages/camera_screen.dart';
import 'package:whatsapp_clone/pages/chat_screen.dart';
import 'package:whatsapp_clone/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  final List<CameraDescription> cameras;
  WhatsAppHome({required this.cameras});
  @override
  State<WhatsAppHome> createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  bool showFab = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
    _tabController?.addListener(() {
      if (_tabController?.index == 1) {
        showFab = true;
      } else {
        showFab = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        elevation: 0.7,
       backgroundColor: Theme.of(context).primaryColor,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'CHATS',
            ),
            Tab(text: 'Status'),
            Tab(
              text: 'Call',
            ),

          ],

        ),
        actions: [
          Icon(Icons.search),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
          Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraScreen(widget.cameras),
          ChatScreen(),
          StatusScreen(),
          CallsScreen()
        ],
      ),
      floatingActionButton: showFab ? FloatingActionButton(backgroundColor: Theme.of(context).accentColor, child:
        Icon(Icons.message, color: Colors.white,), onPressed: () => print("open chat")

      ,): null,
    );
  }
}
