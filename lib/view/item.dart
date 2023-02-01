import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:todo/utils/utils.dart';

class item extends StatefulWidget {
  String name;
  String icon;
  String audio;

  item(this.name, this.icon, this.audio);

  @override
  State<StatefulWidget> createState() {
    return itemState(name, icon, audio);
  }
}

class itemState extends State with WidgetsBindingObserver {
  bool _switchValue = false;
  bool canPlay = false;
  String name;
  String icon;
  String audio;

  itemState(this.name, this.icon, this.audio);

  void playAudio(audio) async {
    var value = await utils.getAudioState();
    if (value) {
      AssetsAudioPlayer.newPlayer().open(Audio(audio));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const SizedBox(width: 30),
          Text(
            icon,
            style: const TextStyle(fontSize: 32.0),
          ),
          const SizedBox(width: 50),
          Text(
            name,
            style: const TextStyle(fontSize: 18.0),
          ),
          const Expanded(child: SizedBox()),
          CupertinoSwitch(
              value: _switchValue,
              onChanged: (value) {
                if (value) {
                  playAudio(audio);
                }
                _switchValue = value;
                setState(() {});
              }),
          const SizedBox(width: 30),
        ],
      ),
    );
  }
}
