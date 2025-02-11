import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('camera Page'),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.camera_alt_sharp, color: Color.fromARGB(255, 13, 190, 66)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CameraPage()), // Navigate to CameraPage
            );
          },
          iconSize: 35,
        ),
      ),
    );
  }
}

class CameraPage extends StatefulWidget {
  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  List<CameraDescription> cameras = []; // Initialize the cameras list

  @override
  void initState() {
    super.initState();
    _initializeCameras(); // Call the method to initialize cameras
  }

  Future<void> _initializeCameras() async {
    // Get a list of available cameras
    cameras = await availableCameras();
    if (cameras.isNotEmpty) {
      // Initialize the camera controller
      _controller = CameraController(cameras[0], ResolutionPreset.high);
      _initializeControllerFuture = _controller.initialize();
      setState(() {}); // Update the UI
    } else {
      // Handle the case where no cameras are available
      print("No cameras available");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera Page'),
      ),
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the Future is complete, display the camera preview
            return CameraPreview(_controller);
          } else {
            // Otherwise, display a loading 
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the camera controller
    super.dispose();
  }
}