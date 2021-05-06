import 'package:flutter/material.dart';

class BottomButtonsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      // CircleAvatar(
      //   backgroundColor: Colors.white,
      //   child: Icon(Icons.replay, color: Colors.yellow),
      // ),
      CircleAvatar(
        radius: 30,
        backgroundColor: Colors.grey[300],
        child: Icon(Icons.close,
                    color: Colors.red,
                    size: 35,),
      ),

      // CircleAvatar(
      //   backgroundColor: Colors.white,
      //   child: Icon(Icons.star, color: Colors.blue),
      // ),
      CircleAvatar(
        radius: 30,
        backgroundColor: Colors.grey[300],
        child: Icon(Icons.favorite,
                    color: Colors.green,
                    size: 35 ,),
      ),
      // CircleAvatar(
      //   backgroundColor: Colors.white,
      //   child: Icon(Icons.flash_on, color: Colors.purple),
      // ),
    ],
  );
}