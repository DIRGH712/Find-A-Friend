import 'package:flutter/material.dart';

class MessagingScreen extends StatelessWidget {
  final String name;
  MessagingScreen({this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            height: 70.0,
            color: Colors.white,
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.photo),
                  iconSize: 25.0,
                  color: Colors.red[400],
                  onPressed: () {},
                ),
                Expanded(
                  child: TextField(
                    textCapitalization: TextCapitalization.sentences,
                    onChanged: (value) {},
                    decoration: InputDecoration.collapsed(
                      hintText: 'Send a message...',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  iconSize: 25.0,
                  color: Colors.red[400],
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
