import 'package:convertor/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainLogoWidget extends StatelessWidget {
  final double logoSize;

  MainLogoWidget({@required this.logoSize});

  @override
  Widget build(BuildContext context) {
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
          Text(
            'Converter',
            style: TextStyle(
              fontSize: logoSize,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
