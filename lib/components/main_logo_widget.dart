import 'package:convertor/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MainLogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double logoSize = 40;
    return Container(
      padding: EdgeInsets.only(top: 65.0),
      alignment: Alignment.center,
      child: Column(
        children: [
          CircleAvatar(
            child: Icon(
              FontAwesomeIcons.exchangeAlt,
              color: kMainColor,
              size: logoSize,
            ),
            backgroundColor: Colors.white,
            radius: logoSize,
          ),
          SizedBox(
            width: 10.0,
          ),
          LogoAnimatedText(),
        ],
      ),
    );
  }
}

class LogoAnimatedText extends StatefulWidget {
  @override
  _LogoAnimatedTextState createState() => _LogoAnimatedTextState();
}

class _LogoAnimatedTextState extends State<LogoAnimatedText> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.0,
      child: ColorizeAnimatedTextKit(
        text: [
          "Converter",
          // "Anything",
          // "Now",
        ],
        textStyle: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900),
        colors: [
          Colors.white,
          Colors.grey,
          Colors.blueGrey,
          Colors.black12,
        ],
        textAlign: TextAlign.center,
        alignment: AlignmentDirectional.topStart, // or Alignment.topLeft
        totalRepeatCount: 1,
      ),
    );
  }
}
