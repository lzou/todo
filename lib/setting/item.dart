import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo/utils/utils.dart';

class item extends StatefulWidget {
  const item({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return home();
  }
}

class home extends State with WidgetsBindingObserver {
  bool _switchValue = false;

  @override
  void initState() {
    super.initState();
    initFromCache();
  }

  void initFromCache() async {
    var value = await utils.getAudioState();
    setState(() {
      this._switchValue = value;
    });
  }

  void setData(flag) async {
    await utils.setAudioState(flag);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Container(
          height: 50,
          color: Colors.white,
          child: Row(
            children: [
              const SizedBox(width: 30),
              const Text(
                "开启音效",
                style: TextStyle(fontSize: 18.0),
              ),
              const Expanded(child: SizedBox()),
              CupertinoSwitch(
                  value: _switchValue,
                  onChanged: (value) {
                    _switchValue = value;
                    setState(() {
                      setData(_switchValue);
                    });
                  }),
              const SizedBox(width: 30),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Ink(
          color: Colors.white,
          child: SizedBox(
            height: 50,
            child: InkWell(
              splashColor: Colors.grey[400],
              child: Row(
                children: const [
                  SizedBox(width: 30),
                  Text(
                    "编辑列表",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
              onTap: () {
                // todo edit list
              },
            ),
          ),
        ),
      ],
    );
  }
}
