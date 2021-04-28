import 'package:cupet/components/custom_bottom_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:cupet/modules/chat_page.dart';

import '../../enums.dart';

class ChatScreen extends StatelessWidget{
  static String routeName = "/chat";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatPage(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.message),
    );
  }
}