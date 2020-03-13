import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final String username;
  final Widget circleAvatar;

  ChatScreen({
    this.username,
    this.circleAvatar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FractionalTranslation(
          translation: Offset(-0.2, 0.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                child: circleAvatar,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text('User'),
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.videocam), onPressed: () {}),
          IconButton(icon: Icon(Icons.call), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: Container(
        color: Colors.amber,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(flex: 2,fit: FlexFit.tight,child: chatSection(context),),
            Flexible(flex: 1,child: chatInput(context)),
          ],
        ),
      ),
    );
  }

  Widget chatSection(BuildContext context){
    return Column(
      children: <Widget>[
        chatBubble(),
        chatBubble(),
        chatBubble(),

      ],
    );
  }

  Widget chatBubble(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.centerLeft,
        color: Colors.red,
        child: Text('sender'),
      ),
    );
  }

  Widget chatInput(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.white),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.tag_faces,
                        color: Colors.grey,
                      ),
                      onPressed: () {}),
                  Container(
                    height: 20.0,
                    width: MediaQuery.of(context).size.width - 220.0,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Type a messsage',
                      ),
                    ),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.attach_file,
                        color: Colors.grey,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                      ),
                      onPressed: () {}),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Theme.of(context).buttonColor),
              child: IconButton(
                icon: Icon(
                  Icons.mic,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
