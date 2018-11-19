import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordpair = WordPair.random(maxSyllables: 10);
    return MaterialApp(
      title: 'primera app en flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text("hola flutter"),
        ),
        body: Center(
          child: Text(wordpair.asPascalCase),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 1,
            items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.home), 
              title: Text('home')),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text('mail')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt),
              title: Text('camera')
          ),
        ]),
      ),
    );
  }
}
