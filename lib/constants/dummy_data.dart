import 'package:flutter/cupertino.dart';

List<String> texts = [
  "첫번째",
  "두번째",
  "세번째",
  "네번째",
  "오",
  "육",
  "칠",
  "팔",
];
List<String> imgs = [
  "assets/image/img_1.png",
  "assets/image/img_2.png",
  "assets/image/img_1.png",
  "assets/character/face.jpg",
  "assets/image/img_1.png",
  "assets/image/img_2.png",
  "assets/image/img_1.png",
  "assets/character/face.jpg",
];

List<String> missions = [
  "왼손 번쩍",
  "오른손 번쩍",
  "양손 번쩍",
  "왼손 흔들기",
  "오른손 흔들기",
  "",
  "박수치기",
  "박수치기",
];

var clr_index = ValueNotifier<int>(0);