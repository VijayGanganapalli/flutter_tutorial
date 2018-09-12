import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "images/lake.jpg",
      height: 240.0,
      fit: BoxFit.cover,
    );
  }
}
