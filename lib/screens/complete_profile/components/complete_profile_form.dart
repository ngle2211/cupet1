import 'package:flutter/material.dart';
import 'package:cupet/components/custom_surfix_icon.dart';
import 'package:cupet/components/default_button.dart';
import 'package:cupet/components/form_error.dart';
import 'package:cupet/screens/otp/otp_screen.dart';
import 'package:flutter/widgets.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String petName;
  String breed;
  String type;
  String description;

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildBreedFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildTypeFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildDescriptionFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildSexFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState.validate()) {
                Navigator.pushNamed(context, OtpScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  int _value = 1;

  Widget buildSexFormField(){
    return Padding(
        padding: const EdgeInsets.all(0.0),
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 145.0, vertical: 7.5),
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

  TextFormField buildDescriptionFormField() {
    return TextFormField(
      onSaved: (newValue) => description = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kAddressNullError);
          return "";
        }
        return null;
      },
      maxLength: 500,
      decoration: InputDecoration(
        // icon: Icon(Icons.pets_rounded),
        labelText: "Description",
        labelStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.deepOrange,
        ),
        suffixIcon: Icon(
          Icons.check_circle,
        ),
        hintText: "Tell something about your pet",
        hintStyle: TextStyle(
          fontSize: 15,
          color: Colors.grey.withOpacity(0.7),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildTypeFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => type = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        // icon: Icon(Icons.pets_rounded),
        labelText: "Type",
        labelStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.deepOrange,
        ),
        suffixIcon: Icon(
          Icons.check_circle,
        ),
        hintText: "Enter your pet type",
        hintStyle: TextStyle(
          fontSize: 15,
          color: Colors.grey.withOpacity(0.7),
        ),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,

      ),
    );
  }

  TextFormField buildBreedFormField() {
    return TextFormField(
      onSaved: (newValue) => breed = newValue,
      decoration: InputDecoration(
        // icon: Icon(Icons.pets_rounded),
        labelText: "Breed",
        labelStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.deepOrange,
        ),
        suffixIcon: Icon(
          Icons.check_circle,
        ),
        hintText: "Enter your pet breed",
        hintStyle: TextStyle(
          fontSize: 15,
          color: Colors.grey.withOpacity(0.7),
        ),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,

      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      onSaved: (newValue) => petName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        // icon: Icon(Icons.pets_rounded),
        labelText: "Pet Name",
        labelStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.deepOrange,
        ),
        suffixIcon: Icon(
          Icons.check_circle,
        ),
        hintText: "Enter your pet name",
        hintStyle: TextStyle(
          fontSize: 15,
          color: Colors.grey.withOpacity(0.7),
        ),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}


