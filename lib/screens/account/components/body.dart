import 'package:flutter/material.dart';
import 'package:cupet/size_config.dart';
import 'package:cupet/screens/account/components/profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
          vertical: 40,
        horizontal: 35,
      ),
      child: Column(
        children: [
          ProfilePic(),
          Center(
              child: SizedBox(
                  height: 50,
              ),
          ),
          buildTextField("Pet Name", "Hank",50),
          buildTextField("Type", "Dog",50),
          buildTextField("Breed", "Terrier",50),
          buildTextField("Description", "Tell something about the pet",300),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlineButton(
                padding: EdgeInsets.symmetric(horizontal: 50),
                onPressed: (){},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text("CANCEL",
                  style: TextStyle(
                      fontSize: 17,
                      letterSpacing: 2.2,
                      color: Colors.black))
              ),
              RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  onPressed: (){},
                  color: Colors.indigo,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                  child: Text("SAVE",
                      style: TextStyle(
                          fontSize: 17,
                          letterSpacing: 2.2,
                          color: Colors.white))
                  ),
            ],
          )
        ],
      ),
    );
  }
}

Widget buildTextField(String labelText, String placeholder, int maxLength){
  return Padding(
    padding: const EdgeInsets.only(bottom: 30.0),
    child: TextFormField(
      cursorColor:Colors.black,
      maxLength: maxLength,

      decoration: InputDecoration(
          icon: Icon(Icons.pets_rounded),
          border: OutlineInputBorder(),
          labelText: labelText,
          labelStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.deepOrange,
          ),
          suffixIcon: Icon(
            Icons.check_circle,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder,
          hintStyle: TextStyle(
            fontSize: 15,
            color: Colors.grey.withOpacity(0.7),
          )),
    ),
  );
}

