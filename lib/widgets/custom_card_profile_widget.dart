import 'package:flutter/material.dart';

class CustomCardProfileWidget extends StatefulWidget {
  const CustomCardProfileWidget({Key? key}) : super(key: key);

  @override
  State<CustomCardProfileWidget> createState() =>
      _CustomCardProfileWidgetState();
}

class _CustomCardProfileWidgetState extends State<CustomCardProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 13.0,vertical: 15.0,),
      width: MediaQuery.of(context).size.width,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(20.0,),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal:12.0),
            child: Icon(
              Icons.person,
            ),
          ),
          Expanded(
            child: Text(
              "My account",
              style:TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,),
            ),
          ),
       Padding(
            padding: EdgeInsets.symmetric(horizontal:12.0),
            child: Icon(
              Icons.arrow_forward_ios_rounded,
            ),
          ),
        ],
      ),
    );
  }
}
