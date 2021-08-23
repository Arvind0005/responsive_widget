import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_screens/responsive_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Large screen"),
        ),
      ),
      smallScreen: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("small screen"),
        ),
      ),
      mediumScreen: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("medium screen"),
        ),
      ),
    );
  }
}
