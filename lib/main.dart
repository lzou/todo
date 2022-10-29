import 'package:flutter/material.dart';
import 'package:todo/setting/settings.dart';
import 'package:todo/view/list.dart';
import 'package:wakelock/wakelock.dart';

void main() {
  runApp(App());
  Wakelock.enable();
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
          primaryColor: Colors.yellow
      ),
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('toDo'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const settings()));
            },
            icon: const Icon(Icons.settings),
            tooltip: 'setting',
          )
        ],
      ),
      body: list(),
    );
  }
}