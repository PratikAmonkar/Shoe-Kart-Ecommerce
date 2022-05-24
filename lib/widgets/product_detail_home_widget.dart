import 'package:flutter/material.dart';

Widget productDetailWidget() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 8.0,),
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 248, 240, 255),
      border: Border.all(
        width: 2.0,
      ),
      borderRadius: BorderRadius.circular(15.0,),
    ),
    width: 200,
    height: 260,
    child: Padding(
      padding: const EdgeInsets.only(top:12.0),
      child: Column(
        children: [
          Image.asset(
            "images/shoe-image.png",
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Jordan",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "sdf",
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
                const Text(
                  "132",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
