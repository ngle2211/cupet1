import 'package:cupet/screens/chats/components/chat.dart';
import 'package:cupet/models/chat_users.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget{
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(text: "Kai", secondaryText: "Awesome Setup", image: "assets/images/chat_image1.jpg", time: "Now"),
    ChatUsers(text: "Zero", secondaryText: "That's Great", image: "assets/images/chat_image2.jpg", time: "Yesterday"),
    ChatUsers(text: "Inu", secondaryText: "Hey where are you?", image: "assets/images/chat_image3.jpg", time: "31 Mar"),
    ChatUsers(text: "Tan", secondaryText: "Busy! Call me in 20 mins", image: "assets/images/chat_image4.jpg", time: "Now"),
    ChatUsers(text: "Gom", secondaryText: "Thank you, It's awesome", image: "assets/images/chat_image5.png", time: "23 Mar"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 70,left: 16,right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(Icons.search,color: Colors.grey.shade600,size:26,),
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: Colors.grey.shade100
                      )
                  ),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return ChatUsersList(
                  text: chatUsers[index].text,
                  secondaryText: chatUsers[index].secondaryText,
                  image: chatUsers[index].image,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3)?true:false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}