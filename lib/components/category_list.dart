import 'package:convertor/components/category_tile.dart';
import 'package:convertor/units_data.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.4,
      minChildSize: 0.3,
      maxChildSize: 0.65,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30.0),
              topLeft: Radius.circular(30.0),
            ),
          ),
          child: ListView.builder(
            controller: scrollController,
            itemCount: unitsData.keys.toList().length,
            itemBuilder: (context, index) {
              return CategoryTile(
                categoryIndex: index,
              );
            },
          ),
        );
      },
    );
  }
}
