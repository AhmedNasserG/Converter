import 'package:convertor/constants.dart';
import 'package:convertor/units_data.dart';
import 'package:flutter/material.dart';

class UnitsDropDownButton extends StatefulWidget {
  final int categoryIndex;
  final List unitsList;
  final Function(int) unitIndexCallBack;

  UnitsDropDownButton(
      {@required this.categoryIndex,
      this.unitIndexCallBack,
      @required this.unitsList});

  @override
  _UnitsDropDownButtonState createState() => _UnitsDropDownButtonState();
}

class _UnitsDropDownButtonState extends State<UnitsDropDownButton> {
  String selectedUnit;

  @override
  Widget build(BuildContext context) {
    String currentCategory = '${unitsData.keys.toList()[widget.categoryIndex]}';

    List<DropdownMenuItem<String>> units = [];
    if (currentCategory == 'Currency') {
      for (int i = 0; i < widget.unitsList.length; i++) {
        units.add(DropdownMenuItem(
          child: Text(widget.unitsList[i]),
          value: '$i',
        ));
      }
    } else {
      for (int i = 0; i < widget.unitsList.length; i++) {
        units.add(DropdownMenuItem(
          child: Text(widget.unitsList[i]['name']),
          value: '$i',
        ));
      }
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      width: double.infinity,
      decoration: kContainerElementStyle,
      child: DropdownButton(
        isExpanded: true,
        hint: Text('Choose a Unit'),
        value: selectedUnit,
        items: units,
        onChanged: (selected) {
          setState(() {
            widget.unitIndexCallBack(int.parse(selected));
            selectedUnit = selected;
          });
        },
      ),
    );
  }
}
