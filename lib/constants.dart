import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Enter a Value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
);

const kContainerDecoration = BoxDecoration(
  color: Colors.grey,
  borderRadius: BorderRadius.all(Radius.circular(20.0)),
);

const kContainerSpacing = EdgeInsets.symmetric(
  horizontal: 20.0,
  vertical: 20.0,
);

const kContainerTextStyle = TextStyle(fontSize: 20.0);

const kContainerElementStyle = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
);
const kMainColor = Colors.purple;
const double logoSize = 40;
const kApiKey = 'da579a4b4f1d07ba742ea784613990d2';
const url = 'http://data.fixer.io/api/symbols?access_key=$kApiKey';
