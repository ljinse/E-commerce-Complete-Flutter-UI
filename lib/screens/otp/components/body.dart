import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            Text(
              "OTP Verification",
              style: headingStyle,
            ),
            Text(
              "We sent your code to +1 898 860 ***",
            ),
            buildTimer(),
            OtpForm(),
          ],
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will be expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}

class OtpForm extends StatefulWidget {
  const OtpForm({Key key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              obscureText: true,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              decoration: otpInputDecoration,
              onChanged: (value) {},
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              obscureText: true,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              decoration: otpInputDecoration,
              onChanged: (value) {},
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              obscureText: true,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              decoration: otpInputDecoration,
              onChanged: (value) {},
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              obscureText: true,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              decoration: otpInputDecoration,
              onChanged: (value) {},
            ),
          )
        ],
      ),
    );
  }
}
