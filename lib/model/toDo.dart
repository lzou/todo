class toDo {
  final String name;
  final String icon;
  final String audio;

  const toDo({
    required this.icon,
    required this.name,
    required this.audio
  });
}

final List<toDo> datas = [
  const toDo(
    name: '穿衣服',
    icon: '👚',
    audio: 'assets/audios/amazing.wav'
  ),
  const toDo(
    name: '刷牙',
    icon: '🪥',
    audio: 'assets/audios/complete.wav'
  ),
  const toDo(
    name: '小便',
    icon: '🚽',
    audio: 'assets/audios/congratulation.wav'
  ),
  const toDo(
    name: '梳头',
    icon: '🎀',
    audio: 'assets/audios/goodjob.wav'
  ),
  const toDo(
    name: '洗脸',
    icon: '🧼',
    audio: 'assets/audios/great.wav'
  ),
  const toDo(
    name: '背书包',
    icon: '🎒',
    audio: 'assets/audios/nice.wav'
  ),
  const toDo(
    name: '拿接送卡',
    icon: '🪪',
    audio: 'assets/audios/zhenbang.wav'
  )
];