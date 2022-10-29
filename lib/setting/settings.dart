import 'package:flutter/material.dart';
import 'package:todo/setting/item.dart';

class settings extends StatelessWidget {
  const settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(context),
    );
  }
}

class Home extends StatelessWidget {
  BuildContext pageContext;

  Home(this.pageContext);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('setting'),
        leading: IconButton(onPressed: () {
          Navigator.pop(pageContext);
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: item(),
    );
  }
  
}