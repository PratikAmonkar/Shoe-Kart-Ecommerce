import 'package:flutter/material.dart';

Widget seeAllProductDetailWidget() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset("images/shoe-image.png"),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Gods",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Medium 221 Back...",
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
            Text(
              "100",
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
