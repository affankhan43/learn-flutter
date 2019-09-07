// Import Flutter Helper Library
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';

// Create class that will be our custom widget
// This class must extend the 'StatelessWidget' base class

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}
class AppState extends State<App> {
  int counter = 0;

  void fetchImage(){
    get('http://jsonplaceholder.typicode.com/photos');
  }
  // Must define a 'build' method that returns
  // the widgets that *this* widget will show
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Let\'s see some images!')
          ),
        body: Text('$counter Images'),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.thumb_up),
          onPressed: fetchImage,
        ),
        ),
    );
  }
}