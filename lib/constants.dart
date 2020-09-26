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
  color: Color(0xFFBDBDBD),
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
const kMainColor = Color(0xFF2196f3);
const double logoSize = 40;
const kApiKey = 'b023322a99bf9b0b6075';
const kCurrenciesSymbolsUrl =
    'https://free.currconv.com/api/v7/currencies?apiKey=$kApiKey';
const kCurrenciesExchangeUrl = 'https://free.currconv.com/api/v7/convert?q=';
