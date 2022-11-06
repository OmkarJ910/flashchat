import 'package:flutter/material.dart';
class RoundedButton extends StatelessWidget {
  RoundedButton({this.color, @required this.onClick, this.text});

  final Color? color;
  final Function? onClick;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color, //Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed:()=> onClick,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            text!,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
