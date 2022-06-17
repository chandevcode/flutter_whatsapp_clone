import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/whats_app_home.dart';

List<CameraDescription>? cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
          primaryColor: Color(0xff1c523f),
          accentColor: Color(0xff25D366)),
      debugShowCheckedModeBanner: false,
      home: WhatsAppHome(cameras: cameras!),
    );
  }
}
