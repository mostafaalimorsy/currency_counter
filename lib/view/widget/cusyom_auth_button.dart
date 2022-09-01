import 'package:flutter/material.dart';

Widget AuthButton(String title ,VoidCallback? onPressed ){
  return Card(
    color: Color.fromRGBO(182, 239, 18, 1),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: TextButton(
        onPressed: onPressed,
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
        )),
  );
}