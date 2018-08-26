import 'package:flutter/material.dart';

const String _name = "Andie Droid";

class FriendlyChatMessage extends StatelessWidget {
  final String text;
  FriendlyChatMessage({this.text});

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: new CircleAvatar(child: new Text(_name[0])),
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(_name, style: Theme.of(context).textTheme.subhead),
              new Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: new Text(text),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

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
  final List<FriendlyChatMessage> _messages = <FriendlyChatMessage>[];
  final TextEditingController _textController = new TextEditingController();

  void _handleSubmitted(String text) {
    print("Submitted Text: $text");
    _textController.clear();
    FriendlyChatMessage message = FriendlyChatMessage(text: text);
    setState(() {
      _messages.insert(0, message);
    });
  }

  Widget _buildTextComposer() {
    return new IconTheme(
      data: new IconThemeData(color: Theme.of(context).accentColor),
      child: new Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: new Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration:
                    new InputDecoration.collapsed(hintText: "Send a message"),
              ),
            ),
            new Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: new IconButton(
                icon: new Icon(Icons.send),
                onPressed: () => _handleSubmitted(_textController.text),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Hello! "),
      ),
      body: new Column(
        children: <Widget>[
          new Flexible(
            child: ListView.builder(
              padding: new EdgeInsets.all(8.0), //new
              reverse: true, //new
              itemBuilder: (_, int index) => _messages[index], //new
              itemCount: _messages.length,
            ),
          ),
          new Divider(height: 1.0),
          new Container(
            decoration: new BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: _buildTextComposer(),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(new FriendlyChatApp());
}
