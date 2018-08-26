import 'package:flutter/material.dart';

class FriendlyChatApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Friendly Chat",
      home: new FriendlyChatScreen(),
    );
  }
}

class FriendlyChatScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Hello! "),
      ),
    );
  }
}

void main() {
  runApp(new FriendlyChatApp());
}