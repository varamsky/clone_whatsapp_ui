import 'package:flutter/material.dart';

class ChatListModel {
  Widget circleAvatar;
  String username;
  String userSubtitle;
  String chatDateTime;
  String statusDateTime;
  bool statusSeen;


  ChatListModel({
    this.circleAvatar,
    this.username,
    this.userSubtitle,
    this.chatDateTime,
    this.statusDateTime,
    this.statusSeen,
  });
}

  List<ChatListModel> dummyList = [
    ChatListModel(circleAvatar: FlutterLogo(),username: 'User',userSubtitle: 'subtitle',chatDateTime: '5:25pm',statusDateTime: '2 minutes ago',statusSeen: false,),
    ChatListModel(circleAvatar: FlutterLogo(),username: 'User',userSubtitle: 'subtitle',chatDateTime: '5:25pm',statusDateTime: '15 minutes ago',statusSeen: false,),
    ChatListModel(circleAvatar: FlutterLogo(),username: 'User',userSubtitle: 'subtitle',chatDateTime: '5:25pm',statusDateTime: '16 minutes ago',statusSeen: false,),
    ChatListModel(circleAvatar: FlutterLogo(),username: 'User',userSubtitle: 'subtitle',chatDateTime: '5:25pm',statusDateTime: '48 minutes ago',statusSeen: true,),
    ChatListModel(circleAvatar: FlutterLogo(),username: 'User',userSubtitle: 'subtitle',chatDateTime: '5:25pm',statusDateTime: 'Today, 4:31 pm',statusSeen: false,),
    ChatListModel(circleAvatar: FlutterLogo(),username: 'User',userSubtitle: 'subtitle',chatDateTime: '5:25pm',statusDateTime: 'Today, 7:01 pm',statusSeen: false,),
    ChatListModel(circleAvatar: FlutterLogo(),username: 'User',userSubtitle: 'subtitle',chatDateTime: '5:25pm',statusDateTime: 'Today, 9:35 pm',statusSeen: false,),
    ChatListModel(circleAvatar: FlutterLogo(),username: 'User',userSubtitle: 'subtitle',chatDateTime: '5:25pm',statusDateTime: 'Today, 4:37 pm',statusSeen: true,),
    ChatListModel(circleAvatar: FlutterLogo(),username: 'User',userSubtitle: 'subtitle',chatDateTime: '5:25pm',statusDateTime: 'Yesterday, 3:31 am',statusSeen: false,),
    ChatListModel(circleAvatar: FlutterLogo(),username: 'User',userSubtitle: 'subtitle',chatDateTime: '5:25pm',statusDateTime: 'Today, 9:31 pm',statusSeen: false,),
    ChatListModel(circleAvatar: FlutterLogo(),username: 'User',userSubtitle: 'subtitle',chatDateTime: '5:25pm',statusDateTime: 'Yesterday, 2:26 am',statusSeen: true,),
    ChatListModel(circleAvatar: FlutterLogo(),username: 'User',userSubtitle: 'subtitle',chatDateTime: '5:25pm',statusDateTime: 'Today, 6:16 pm',statusSeen: false,),
    ChatListModel(circleAvatar: FlutterLogo(),username: 'User',userSubtitle: 'subtitle',chatDateTime: '5:25pm',statusDateTime: 'Today, 5:21 pm',statusSeen: true,),
    ChatListModel(circleAvatar: FlutterLogo(),username: 'User',userSubtitle: 'subtitle',chatDateTime: '5:25pm',statusDateTime: 'Yesterday, 3:44 am',statusSeen: true,),
    ChatListModel(circleAvatar: FlutterLogo(),username: 'User',userSubtitle: 'subtitle',chatDateTime: '5:25pm',statusDateTime: 'Today, 4:31 pm',statusSeen: true,),

  ];
