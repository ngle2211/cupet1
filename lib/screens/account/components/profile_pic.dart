import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 120,
      child: Stack(
        fit: StackFit.expand,
        overflow: Overflow.visible,
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                  color: Colors.deepOrange,
                ),
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 3, blurRadius: 10,
                      color: Colors.black.withOpacity(0.3),
                      offset: Offset(0,5)
                  ),
                ],
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/profile_image.jpg")
                )
            ),
          ),
          Positioned(
            width: 50,
            height: 50,
            right: -10,
            bottom: -10,
            child: RaisedButton(
              padding: EdgeInsets.symmetric(
                  horizontal: 0,
                  vertical: 0,
              ),
              onPressed: (){},
              color: Colors.indigo,
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                  side: BorderSide(color: Colors.indigo)
              ),
              child: Icon(
                Icons.edit,
                color: Colors.white,
              ),
          ),
          ),
        ],
      ),
    );
  }
}
