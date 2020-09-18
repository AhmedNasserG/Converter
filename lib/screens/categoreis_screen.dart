import 'package:convertor/components/category_list.dart';
import 'package:convertor/components/main_logo_widget.dart';
import 'package:convertor/constants.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    double logoSize = min(animation.value * 50, 40);
    return SafeArea(
      child: Scaffold(
        backgroundColor: kMainColor,
        body: Stack(
          children: [
            MainLogoWidget(logoSize: logoSize),
            CategoryList(),
          ],
        ),
      ),
    );
  }
}
