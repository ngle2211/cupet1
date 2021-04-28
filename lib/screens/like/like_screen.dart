import 'components/body.dart';

import 'package:flutter/material.dart';
import 'package:cupet/components/custom_bottom_nav_bar.dart';
import 'package:cupet/enums.dart';

import 'components/body.dart';

class LikeScreen extends StatelessWidget  {
  static String routeName = "/like";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.favourite),
    );
  }
}
