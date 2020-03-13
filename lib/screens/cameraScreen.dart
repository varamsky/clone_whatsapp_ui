import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraScreen extends StatefulWidget {
  List<CameraDescription> cameras;

  CameraScreen({this.cameras});
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController cameraController;

  @override
  void initState(){
    super.initState();
    cameraController = CameraController(widget.cameras[0],ResolutionPreset.medium);
    cameraController.initialize().then((_){
      if(!mounted){
        setState(() {

        });
      }
    });
  }

  @override
  void dispose() {
    cameraController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if(!cameraController.value.isInitialized) {
      print('CAMERA NOT INITIALIZED\ncameraController.value.isInitialized = false');
      return Container();
    }
    return AspectRatio(
      aspectRatio: cameraController.value.aspectRatio,
      child: CameraPreview(cameraController),
    );
  }
}
