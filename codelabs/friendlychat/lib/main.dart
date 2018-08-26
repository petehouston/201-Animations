import 'package:flutter/material.dart';

class FriendlyChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Friendly Chat",
      home: new FriendlyChatScreen(),
    );
  }
}

class FriendlyChatScreen extends StatefulWidget {
  @override
  State createState() => new FriendlyChatScreenState();
}

class FriendlyChatScreenState extends State<FriendlyChatScreen> {
  final TextEditingController _textController = new TextEditingController();

  void _handleSubmitted(String text){
    print("Submitted Text: $text");
    _textController.clear();
  }

  Widget _buildTextComposer() {
    return new Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: new TextField(
        controller: _textController,
        onSubmitted: _handleSubmitted,
        decoration: new InputDecoration.collapsed(hintText: "Send a message"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Hello! "),
      ),
      body: _buildTextComposer(),
    );
  }
}

void main() {
  runApp(new FriendlyChatApp());
}
