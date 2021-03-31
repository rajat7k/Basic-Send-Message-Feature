import 'package:basic_chatapp/chat_message.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textEditingController =
      new TextEditingController();

  final List<ChatMessage> _messages = <ChatMessage>[];

  void _handleSubmit(String text) {
    _textEditingController.clear();
    ChatMessage message = new ChatMessage(
      message: text,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleNull(String text) {
    if (text.isNotEmpty) {
      _handleSubmit(text);
    }
  }

  Widget _textComposer() {
    return new IconTheme(
      data: new IconThemeData(color: Colors.blueAccent),
      child: new Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: new Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
                decoration:
                    new InputDecoration.collapsed(hintText: "Send a Message"),
                onSubmitted: _handleNull,
                controller: _textEditingController,
              ),
            ),
            new Container(
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                child: new IconButton(
                  icon: new Icon(Icons.send),
                  onPressed: () => _handleNull(_textEditingController.text),
                ))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: new Column(
        children: <Widget>[
          new Flexible(
              child: new ListView.builder(
            reverse: true,
            itemBuilder: (_, int index) => _messages[index],
            padding: new EdgeInsets.all(8.0),
            itemCount: _messages.length,
          )),
          new Divider(
            height: 1.0,
          ),
          new Container(
            decoration: new BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: _textComposer(),
          )
        ],
      ),
    );
  }
}
