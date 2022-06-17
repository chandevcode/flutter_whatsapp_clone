import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraScreen extends StatefulWidget {
  final List<CameraDescription> cameras;
  CameraScreen(this.cameras);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController? controller;

  @override
  void initState() {
    controller= CameraController(widget.cameras[0], ResolutionPreset.medium);
    controller?.initialize().then((_) {
      if(!mounted){
        return;
      }
      setState(() {

    });
      @override
      void dispose() {
        // Add code before the super
        controller?.dispose();

        super.dispose();
      }
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    if (controller!.value.isInitialized) {
      return Container();
    }
    return AspectRatio(aspectRatio: controller!.value.aspectRatio, child: CameraPreview(controller!),);
  }
}
