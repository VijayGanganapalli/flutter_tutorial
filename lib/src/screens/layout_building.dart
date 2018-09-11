import 'package:flutter/material.dart';

class LayoutBuilding extends StatefulWidget {
  @override
  _LayoutBuildingState createState() => _LayoutBuildingState();
}

class _LayoutBuildingState extends State<LayoutBuilding> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        imageSection(),
        titleSection(),
        buttonSection(),
      ],
    );
  }

  Widget imageSection() {
    return Image.asset("images/lake.jpg");
  }

  Widget titleSection() {
    return Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Oeschinen Lake Campground",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "Kandersteg, Switzerland",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text("41"),
        ],
      ),
    );
  }

  Widget buttonSection() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtonColumn(Icons.call, "CALL"),
          buildButtonColumn(Icons.near_me, "ROUTE"),
          buildButtonColumn(Icons.share, "SHARE"),
        ],
      ),
    );
  }

  Widget buildButtonColumn(IconData icon, String label) {
    Color color = Theme.of(context).primaryColorDark;
    return Column(
      children: <Widget>[
        Icon(icon, color: color),
        Container(
          margin: EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
