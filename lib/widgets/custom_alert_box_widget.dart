import 'package:flutter/material.dart';

void showMyDialog(context, String message, String status) async {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(status),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text(
                message,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            child: const Text('Ok'),
            onPressed: () async {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
