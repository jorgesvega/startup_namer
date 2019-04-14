import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter! Cha chán!',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutterio'),
        ),
        body: Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}

// 1) This is the widget
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

// 2) This generates the state for the widget
class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}