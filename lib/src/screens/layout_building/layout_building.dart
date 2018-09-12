import 'package:flutter/material.dart';
import 'section_title.dart';
import 'section_button.dart';
import 'section_image.dart';
import 'section_description.dart';

class LayoutBuilding extends StatefulWidget {
  @override
  _LayoutBuildingState createState() => _LayoutBuildingState();
}

class _LayoutBuildingState extends State<LayoutBuilding> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ImageSection(),
        TitleSection(),
        ButtonSection(),
        DescSection(),
      ],
    );
  }
}
