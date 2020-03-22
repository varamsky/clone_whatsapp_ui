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
        color: Color(0xff9EDFDA),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              flex: 5,
              fit: FlexFit.loose,
              child: chatSection(context),
            ),
            Flexible(flex: 1, child: chatInput(context)),
          ],
        ),
      ),
    );
  }

  Widget chatSection(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Align(
            alignment: Alignment.center,
            child: Container(
              //alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Color(0xffD0E9F9),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5.0),
              ),
              //alignment: Alignment.bottomRight,
              child: Text(
                'TODAY',
                //textAlign: TextAlign.end,
              ),
            ),
          ),
        ),
        chatBubble(Alignment.bottomRight,'hey','11:38 AM'),
        chatBubble(Alignment.bottomLeft,'hello, how\'s it going?','11:39 AM'),
        chatBubble(Alignment.bottomRight,'I\'m fine. \nHey can we meet tomorrow','11:40 AM'),
        chatBubble(Alignment.bottomLeft,'yeah absolutely','11:45 AM'),
        chatBubble(Alignment.bottomLeft,'see you tomorrow','11:45 AM'),
      ],
    );
  }

  Widget chatBubble(Alignment alignment,String message,String time) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: Align(
        alignment: alignment,
        child: Container(
          //alignment: Alignment.bottomRight,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: (alignment == Alignment.bottomRight)?Color(0xffDCFFCA):Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(5.0),
          ),
          //alignment: Alignment.bottomRight,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                message,
                //textAlign: TextAlign.end,
              ),
              SizedBox(width: 5.0,),
              Text(time,style: TextStyle(fontWeight: FontWeight.w300,fontSize: 10.0),),
              SizedBox(width: 5.0,),
              Icon(Icons.done_all,color: Colors.blue,size: 14.0,),
            ],
          ),
        ),
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
