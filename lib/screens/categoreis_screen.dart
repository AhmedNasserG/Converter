import 'package:convertor/components/category_list.dart';
import 'package:convertor/components/main_logo_widget.dart';
import 'package:convertor/constants.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kMainColor,
        body: Stack(
          children: [
            MainLogoWidget(),
            CategoryList(),
          ],
        ),
      ),
    );
  }
}
