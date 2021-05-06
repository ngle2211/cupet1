import 'package:flutter/material.dart';
import 'package:cupet/routes.dart';
import 'package:provider/provider.dart';
import 'package:cupet/screens/splash/splash_screen.dart';
import 'package:cupet/theme.dart';
import 'package:cupet/screens/home/components/provider/feedback_position_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => FeedbackPositionProvider(),
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cupet',
        theme: theme(),
        // home: SplashScreen(),
        // We use routeName so that we dont need to remember the name
        initialRoute: SplashScreen.routeName,
        routes: routes,
      )
  );
}
