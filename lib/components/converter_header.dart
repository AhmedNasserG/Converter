import 'package:convertor/constants.dart';
import 'package:convertor/units_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ConverterHeader extends StatelessWidget {
  final int categoryIndex;

  ConverterHeader({@required this.categoryIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30.0),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 40.0,
            child: Hero(
              tag: 'category_icon$categoryIndex',
              child: Image(
                image: AssetImage(getImage(categoryIndex)),
                height: 50.0,
                color: kMainColor,
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                // '${unitsData.keys.toList()[categoryIndex]}',
                getCategoryName(categoryIndex),
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              Text(
                'Converter',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
