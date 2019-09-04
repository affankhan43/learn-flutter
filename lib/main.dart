// I need to import a helper library
// from flutter to get content on screen
import 'package:flutter/material.dart';

// Define 'main' function to run when our app starts
void main(){
  // Create a new text widget to show some text on screen
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Let\'s see some images!')
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.build),
        onPressed: () {
          print('Hi There!');
        },
      ),
      ),
  );

  // Take that widget and get it on the screen  
  runApp(app);
}
