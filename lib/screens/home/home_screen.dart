import 'package:flutter/material.dart';
import 'package:cupet/components/custom_bottom_nav_bar.dart';
import 'package:cupet/enums.dart';
import 'components/HomePage.dart';

import 'package:provider/provider.dart';
import 'package:cupet/screens/home/components/HomePage.dart';
import 'package:cupet/screens/home/components/provider/feedback_position_provider.dart';


class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  // @override
  // Widget build(BuildContext context) => ChangeNotifierProvider(
  //     create: (context) => FeedbackPositionProvider() {
  //   return Scaffold(
  //     body: HomePage(),
  //     bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
  //   );
  // };
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => FeedbackPositionProvider(),
      child: Scaffold(
        body: HomePage(),
        bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
      )
  );
}