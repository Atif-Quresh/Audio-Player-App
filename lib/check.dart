import 'package:flutter/material.dart';

class Check extends StatefulWidget {
  Check({Key? key}) : super(key: key);

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: AutomaticNotchedShape(
RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(25),
 ),),
      ));
  }
}
