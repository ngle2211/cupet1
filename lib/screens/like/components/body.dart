import 'package:cupet/screens/like/like_screen.dart';
import 'package:flutter/material.dart';
import 'package:cupet/screens/like/components/like_json.dart';
// import 'package:tinder_clone/theme/colors.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.only(bottom: 90),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  likes_json.length.toString() + " Likes",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange),
                ),
                Text(
                  "Top Picks",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange.withOpacity(0.5)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 0.8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Wrap(
              spacing: 5,
              runSpacing: 5,
              children: List.generate(likes_json.length, (index) {
                return Container(
                  width: (size.width - 15) / 2,
                  height: 200,
                  child: Stack(
                    children: [
                      Container(
                        width: (size.width - 15) / 2,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage((likes_json[index]['img'])),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        width: (size.width - 15) / 2,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  Colors.black.withOpacity(0.25),
                                  Colors.black.withOpacity(0),
                                ],
                                end: Alignment.topCenter,
                                begin: Alignment.bottomCenter)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            likes_json[index]['active']
                                ? Padding(
                              padding:
                              const EdgeInsets.only(left: 8, bottom: 8),
                              child: Row(
                                children: [
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.circle),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Recently Active",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                            )
                                : Padding(
                              padding:
                              const EdgeInsets.only(left: 8, bottom: 8),
                              child: Row(
                                children: [
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        shape: BoxShape.circle),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Offline",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}



