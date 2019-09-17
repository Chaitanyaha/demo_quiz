import 'package:flutter/material.dart';

List<Widget> score = [];

List<String> que = [
  'If an object moves at constant velocity, then there must be at least one force acting on the object.',
  'Jupiter is composed mostly of iron.',
  'A lunar eclipse occurs when the sun passes',
  'The earth is the fourth planet from the sun.'
];

List<int> ans = [1, 0, 1, 1];

List<Widget> check(i,j) {
  if (ans[i] == j) {
    score.add(Icon(
      Icons.check,
      color: Colors.green,
    ));
  } else {
    score.add(Icon(
      Icons.close,
      color: Colors.red,
    ));
  }
  return score;
}
