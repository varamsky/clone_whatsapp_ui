import 'package:clone_whatsapp_ui/screens/chatScreen.dart';
import 'package:flutter/material.dart';
import 'package:clone_whatsapp_ui/models/chatListModel.dart';

class ChatListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: Colors.blueGrey,
            indent: 80.0,
            endIndent: 10.0,
          );
        },
        itemCount: dummyList.length,
        itemBuilder: (BuildContext context, int index) {
          return chatTile(index);
        },
      ),
    );
  }

  Widget chatTile(int index) {
    // Builder used here is only to access 'context' for the navigator.push
    // Alternatively one could make the class StateFul
    return Builder(
      builder: (BuildContext context){
        return InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ChatScreen(username: dummyList[index].username,circleAvatar: dummyList[index].circleAvatar,))),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25.0,
              child: dummyList[index].circleAvatar,
            ),
            title: Text(
              dummyList[index].username,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(dummyList[index].userSubtitle),
            trailing: FractionalTranslation(
              translation: Offset(0.0, -0.6),
              child: Text(
                dummyList[index].chatDateTime,
                style: TextStyle(fontSize: 12.0,color: Color(0xff9D8D8D)),
              ),
            ),
          ),
        );
      },
    );
  }
}
