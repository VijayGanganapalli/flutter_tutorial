import 'package:flutter/material.dart';

class LayoutBuilding extends StatefulWidget {
  @override
  _LayoutBuildingState createState() => _LayoutBuildingState();
}

class _LayoutBuildingState extends State<LayoutBuilding> {
  bool _isFavorited = true;
  int _favoriteCount = 42;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        imageSection(),
        titleSection(),
        buttonSection(),
        descriptionSection(),
      ],
    );
  }

  Widget imageSection() {
    return Image.asset(
      "images/lake.jpg",
      height: 240.0,
      fit: BoxFit.cover,
    );
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
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                color: Colors.red,
                icon:
                    (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
                onPressed: _toggleFavorite,
              ),
              SizedBox(
                child: Container(
                  child: Text("$_favoriteCount"),
                ),
              ),
            ],
          ),
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

  Widget descriptionSection() {
    String description =
        "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.";
    return Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }

  void _toggleFavorite() {
    setState(() {
      // If the lake is currently favorited, unfavorite it.
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
        // Otherwise, favorite it.
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }
}
