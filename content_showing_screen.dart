import 'package:flutter/material.dart';
import 'dictionary_brain.dart';

class Contents extends StatelessWidget {
  final int moduleNumber;
  final int lessonNumber;
  Contents({required this.moduleNumber, required this.lessonNumber});

  @override
  Widget build(BuildContext context) {
    var displayingContent =
        DictionaryBrain.dictionaryItems[moduleNumber - 1][lessonNumber - 1][0];
    // var displayingContent = DictionaryBrain.dictionaryItems[4][1][0];
    return Container(
      child: Center(
        child: Text(displayingContent.toString()),
      ),
    );
  }
}
