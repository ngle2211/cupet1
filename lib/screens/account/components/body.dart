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
          buildTextField("Pet Name", "Hank",null),
          buildTextField("Type", "Dog",null),
          buildTextField("Breed", "Terrier",null),
          buildTextField("Description", "Tell something about the pet",500),
          buildSexFormField(),

          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              OutlineButton(
                padding: EdgeInsets.symmetric(horizontal: 30),
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
                  padding: EdgeInsets.symmetric(horizontal: 40),
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
          // icon: Icon(Icons.pets_rounded),
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

Widget buildTextField1(String labelText, String placeholder, int maxLength){
  return Padding(
    padding: const EdgeInsets.only(bottom: 30.0),
    
  );
}

int _value = 1;

Widget buildSexFormField(){
  return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 130.0, vertical: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.white,
              border: Border.all(
                color: Colors.grey.shade600,
              )),
          child: DropdownButton(
            value: _value,
            icon: Icon(Icons.arrow_downward),
            iconSize: 20,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
            items: [
              DropdownMenuItem(

                child: Text('Male'),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text('Female'),
                value: 2,
              )
            ],
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
          )
      )
  );
}

void setState(Null Function() param0) {
}


