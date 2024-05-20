import 'package:brewers_kit_5e/models/character_class.dart';
import 'package:flutter/material.dart';

class CasterProgression {
  final List<List<int>> _spellslotprogression = List.unmodifiable([
    [2, 0, 0, 0, 0, 0, 0, 0, 0], // 1st level
    [3, 0, 0, 0, 0, 0, 0, 0, 0], // 2nd level
    [4, 2, 0, 0, 0, 0, 0, 0, 0], // 3rd level
    [4, 3, 0, 0, 0, 0, 0, 0, 0], // 4th level
    [4, 3, 2, 0, 0, 0, 0, 0, 0], // 5th level
    [4, 3, 3, 0, 0, 0, 0, 0, 0], // 6th level
    [4, 3, 3, 1, 0, 0, 0, 0, 0], // 7th level
    [4, 3, 3, 2, 0, 0, 0, 0, 0], // 8th level
    [4, 3, 3, 3, 1, 0, 0, 0, 0], // 9th level
    [4, 3, 3, 3, 2, 0, 0, 0, 0], // 10th level
    [4, 3, 3, 3, 2, 1, 0, 0, 0], // 11th level
    [4, 3, 3, 3, 2, 1, 0, 0, 0], // 12th level
    [4, 3, 3, 3, 2, 1, 1, 0, 0], // 13th level
    [4, 3, 3, 3, 2, 1, 1, 0, 0], // 14th level
    [4, 3, 3, 3, 2, 1, 1, 1, 0], // 15th level
    [4, 3, 3, 3, 2, 1, 1, 1, 0], // 16th level
    [4, 3, 3, 3, 2, 1, 1, 1, 1], // 17th level
    [4, 3, 3, 3, 3, 1, 1, 1, 1], // 18th level
    [4, 3, 3, 3, 3, 2, 1, 1, 1], // 19th level
    [4, 3, 3, 3, 3, 2, 2, 1, 1], // 20th level
  ]);

  List<int> getSpellSlotArray(List<CharacterClass> classes) {
    double sum = 0;
    int len = classes.length;
    for (int i = 0; i < len; i++) {
      int level = classes[i].getLevel();
      double casterType = classes[i].getCasterType();
      sum += level * casterType;
    }
    int casterLevel = sum.truncate();
    if (casterLevel < 0 || casterLevel > 20) {
      throw ErrorDescription('Not base 5e spell slot progression.');
    }
    return _spellslotprogression[casterLevel];
  }
}
