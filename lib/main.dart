import 'package:clone_whatsapp_ui/screens/callScreen.dart';
import 'package:clone_whatsapp_ui/screens/cameraScreen.dart';
import 'package:clone_whatsapp_ui/screens/statusListScreen.dart';
import 'package:flutter/material.dart';
import 'package:clone_whatsapp_ui/screens/chatListScreen.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;

//void main() => runApp(MyApp());
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  print(cameras);
  runApp(MyApp());
}

//TODO: Solve Camera Issue
//TODO: Add Sliver Appbar
//TODO: Improve Status List Screen

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp UI clone',
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff25D366),
        buttonColor: Color(0xff008F7C),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<String> _pageItems = ['camera', 'chats', 'status', 'calls'];

  @override
  void initState() {
    _tabController =
        TabController(initialIndex: 1, length: _pageItems.length, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('WhatsApp'),
        elevation: 5.0,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search), tooltip: 'Search', onPressed: () {}),
          IconButton(
              icon: Icon(Icons.more_vert),
              tooltip: 'More options',
              onPressed: () {}),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: IconButton(icon: Icon(Icons.camera_alt), onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => CameraScreen(cameras: cameras,),));}),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Text(_pageItems[1].toUpperCase(),style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Text(_pageItems[2].toUpperCase(),style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Text(_pageItems[3].toUpperCase(),style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraScreen(
            cameras: cameras,
          ),
          ChatListScreen(),
          StatusListScreen(
            cameras: cameras,
          ),
          CallScreen(),
        ],
      ),
    );
  }
}
