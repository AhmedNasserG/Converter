import 'package:convertor/components/converter_header.dart';
import 'package:convertor/components/units_drop_down_button.dart';
import 'package:convertor/constants.dart';
import 'package:convertor/units_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math' as math;

// ignore: must_be_immutable
class ConvertScreen extends StatefulWidget {
  final int categoryIndex;
  int fromUnitIndex;
  int toUnitIndex;
  double input;
  double value = 0;

  ConvertScreen({@required this.categoryIndex});

  @override
  _ConvertScreenState createState() => _ConvertScreenState();
}

class _ConvertScreenState extends State<ConvertScreen> {
  void updateOutput() {
    if (widget.input != null &&
        widget.fromUnitIndex != null &&
        widget.toUnitIndex != null) {
      setState(() {
        widget.value = calculate(widget.categoryIndex, widget.fromUnitIndex,
            widget.toUnitIndex, widget.input);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.purple,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ConverterHeader(
              categoryIndex: widget.categoryIndex,
            ),
            Container(
              decoration: kContainerDecoration,
              margin: kContainerSpacing,
              padding: kContainerSpacing,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    style: kContainerTextStyle,
                    keyboardType: TextInputType.number,
                    decoration: kTextFieldDecoration,
                    onChanged: (text) {
                      if (text == '') {
                        setState(() {
                          widget.value = 0;
                        });
                      }
                      widget.input = double.parse(text);
                      updateOutput();
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  UnitsDropDownButton(
                    categoryIndex: widget.categoryIndex,
                    unitIndexCallBack: (value) {
                      widget.fromUnitIndex = value;
                      updateOutput();
                    },
                  ),
                ],
              ),
            ),
            Transform.rotate(
              angle: 90 * math.pi / 180,
              child: CircleAvatar(
                child: Icon(
                  FontAwesomeIcons.exchangeAlt,
                  color: kMainColor,
                  size: logoSize,
                ),
                backgroundColor: Colors.white,
                radius: logoSize,
              ),
            ),
            Container(
              decoration: kContainerDecoration,
              margin: kContainerSpacing,
              padding: kContainerSpacing,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    width: double.infinity,
                    decoration: kContainerElementStyle,
                    child: Text(
                      "${widget.value}",
                      style: kContainerTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  UnitsDropDownButton(
                    categoryIndex: widget.categoryIndex,
                    unitIndexCallBack: (value) {
                      widget.toUnitIndex = value;
                      updateOutput();
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
