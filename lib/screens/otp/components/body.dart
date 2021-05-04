import 'package:cupet/components/default_button.dart';
import 'package:flutter/material.dart';
import 'package:cupet/constants.dart';
import 'package:cupet/size_config.dart';
import 'package:email_auth/email_auth.dart';
import 'otp_form.dart';

class Body extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();

  void sendOTP() async {
    EmailAuth.sessionName = "Test Session";
    var res = await EmailAuth.sendOtp(receiverMail: _emailController.text);
    if (res) {
      print("OTP Sent");
    } else {
      print("We could not sent the OTP");
    }
  }

  void verifyOTP() async {
    var res = EmailAuth.validate(
        receiverMail: _emailController.text, userOTP: _otpController.text);
    if (res) {
      print("OTP Verified");
    } else{
      print ("Invalid OTP");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              Text("We sent your code to your email"),
              buildTimer(),

              OtpForm(),
              DefaultButton(
                text: "VERIFY",
                press: () => verifyOTP(),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.12),
              GestureDetector(
                onTap: () => sendOTP(),
                child: Text(
                  "Resend OTP Code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 0.0, end: 0.0),
          duration: Duration(seconds: 60),
          builder: (_, value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
