import 'package:flutter/material.dart';

class SomethingWentWrong extends StatefulWidget{
  @override
  _SomethingWentWrongState createState() => _SomethingWentWrongState();
}

class _SomethingWentWrongState  extends State<SomethingWentWrong> with SingleTickerProviderStateMixin  {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("test"),
    );
  }
}