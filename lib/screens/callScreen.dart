import 'package:flutter/material.dart';
import 'package:clone_whatsapp_ui/models/chatListModel.dart';

class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add_call,color: Colors.white,),),
      body: ListView.separated(
        separatorBuilder: (BuildContext context,int index){
          return Divider(color: Colors.blueGrey,indent: 80.0,endIndent: 10.0,);
        },
        itemCount: dummyList.length,
        itemBuilder: (BuildContext context,int index){
          return chatTile(index);
        },
      ),
    );
  }

  Widget chatTile(int index){
    return ListTile(
      leading: CircleAvatar(radius: 25.0,child: dummyList[index].circleAvatar,),
      title: Text(dummyList[index].username,style: TextStyle(fontWeight: FontWeight.bold,),),
      subtitle: Row(children: <Widget>[(index % 2 == 0)?Icon(Icons.arrow_back,color: Colors.green,):Icon(Icons.arrow_forward,color: Colors.green,),Text('6 March, ${dummyList[index].chatDateTime}')],),
      trailing: (index % 2 == 0)?IconButton(icon: Icon(Icons.call,color: Theme.of(context).primaryColor,), onPressed: (){}) : IconButton(icon: Icon(Icons.videocam,color: Theme.of(context).primaryColor,), onPressed: (){}),
    );
  }
}
