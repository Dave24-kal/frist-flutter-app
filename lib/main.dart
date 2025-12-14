import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: counterApp()));
}

class counterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<counterApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter app")),
      body: Center(
        child: Text('counter: $counter', style: TextStyle(fontSize: 30)),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
