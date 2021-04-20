import 'package:cupet/screens/account/account_screen.dart';
import 'package:cupet/screens/details/details_screen.dart';
import 'package:cupet/screens/home/home_screen.dart';
import 'package:cupet/screens/sign_in/sign_in_screen.dart';
import 'package:cupet/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(
              height: 10),
          Align(
            alignment: Alignment.center,
            child: Text(
                "Hank, Dog/Terrier",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    color: Colors.indigo)),
          ),
          SizedBox(
              height: 20),
          ProfileMenu(
            text: "Edit User Information",
            icon: "assets/icons/User Icon.svg",
            press: () =>
                Navigator.pushNamed(context, AccountScreen.routeName),
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () =>
                Navigator.pushNamed(context, SplashScreen.routeName),
          ),

        ],
      ),
    );
  }
}
