import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo/model/toDo.dart';
import 'package:todo/view/item.dart';

class list extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return home();
  }
}

class home extends State with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:
          datas.map((v, {index}) => item(v.name, v.icon, v.audio)).toList(),
    );
  }
}
