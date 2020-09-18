import 'package:convertor/screens/convert_screen.dart';
import 'package:convertor/units_data.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final int categoryIndex;

  CategoryTile({this.categoryIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: ListTile(
        leading: Hero(
          tag: 'category_icon$categoryIndex',
          child: Image(
            image: AssetImage(getImage(categoryIndex)),
          ),
        ),
        title: Text(
          getCategoryName(categoryIndex),
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ConvertScreen(
              categoryIndex: categoryIndex,
            );
          }));
        },
      ),
    );
  }
}
