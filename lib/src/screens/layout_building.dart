import 'package:flutter/material.dart';

class LayoutBuilding extends StatefulWidget {
  @override
  _LayoutBuildingState createState() => _LayoutBuildingState();
}

class _LayoutBuildingState extends State<LayoutBuilding> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[Text("Hello World!")],
    );
  }
}
