import 'package:flutter/material.dart';

class MyAwesomeApp extends StatefulWidget{
  @override
  _MyAwesomeAppState createState() => _MyAwesomeAppState();
}
class _MyAwesomeAppState extends State<MyAwesomeApp> with SingleTickerProviderStateMixin {
  bool is_loading = false;

  AnimationController controller;
  Animation<Color> colorTween;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    colorTween = controller.drive(new ColorTween(begin: Colors.greenAccent, end: Colors.deepOrange));
    controller.repeat();
    super.initState();
  }

  void _progress_state() {
    setState(() {
      is_loading = !is_loading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: Text("test"),
        ),

        body: Center(

            child: Container(
              padding: EdgeInsets.all(8.0),
              child: is_loading
                  ? LinearProgressIndicator(
                valueColor: colorTween,
              )
                  : Text("Press button to save"),
            ),

        ),

        floatingActionButton: FloatingActionButton(
          onPressed: _progress_state,
          tooltip: 'Save Content',
          child: Icon(Icons.save),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}