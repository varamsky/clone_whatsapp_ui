import 'package:camera/camera.dart';
import 'package:clone_whatsapp_ui/screens/cameraScreen.dart';
import 'package:flutter/material.dart';
import 'package:clone_whatsapp_ui/models/chatListModel.dart';

class StatusListScreen extends StatefulWidget {
  List<CameraDescription> cameras;

  StatusListScreen({this.cameras});

  @override
  _StatusListScreenState createState() => _StatusListScreenState();
}

class _StatusListScreenState extends State<StatusListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            width: 40.0,
            height: 40.0,
            child: FittedBox(
              child: FloatingActionButton(backgroundColor: Color(0xffEDF5F6),onPressed: (){},child: Icon(Icons.border_color,color: Colors.blueGrey,),),
            ),
          ),
          SizedBox(height: 20.0,),
          FloatingActionButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>CameraScreen(cameras: widget.cameras,)));},child: Icon(Icons.camera_alt,color: Colors.white,),),
        ],
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              child: dummyList[0].circleAvatar,
            ),
            title: Text('My status',style: TextStyle(fontWeight: FontWeight.bold,),),
            subtitle: Text('Tap to add status update'),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 30.0,
            color: Color(0xffF4F4F4),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 7.0),
              child: Text('Recent updates',style: TextStyle(color: Color(0xff139B8B),fontWeight: FontWeight.bold,),),
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return (!dummyList[index].statusSeen)?Divider(color: Colors.blueGrey, indent: 80.0, endIndent: 10.0,):Container();
              },
              itemCount: dummyList.length,
              itemBuilder: (BuildContext context, int index) {
                return (!dummyList[index].statusSeen)?chatTile(index):Container();
              },
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 30.0,
            color: Color(0xffF4F4F4),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 7.0),
              child: Text('Viewed updates',style: TextStyle(color: Color(0xff139B8B),fontWeight: FontWeight.bold,),),
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return (dummyList[index].statusSeen)?Divider(color: Colors.blueGrey, indent: 80.0, endIndent: 10.0,):Container();
              },
              itemCount: dummyList.length,
              itemBuilder: (BuildContext context, int index) {
                return (dummyList[index].statusSeen)?chatTile(index):Container();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget chatTile(int index) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25.0,
        child: dummyList[index].circleAvatar,
      ),
      title: Text(dummyList[index].username,style: TextStyle(fontWeight: FontWeight.bold,),),
      subtitle: Text(dummyList[index].statusDateTime),
    );
  }
}
