import 'package:brewers_kit_5e/models/ancestry.dart';
import 'package:brewers_kit_5e/models/character_class.dart';
import 'package:brewers_kit_5e/models/ability_scores.dart';
import 'package:brewers_kit_5e/models/background.dart';
import 'package:brewers_kit_5e/models/equipment.dart';
import 'package:brewers_kit_5e/models/tweaks.dart';
import 'package:flutter/material.dart';

class Character {
  String _name;

  int _id;

  String _userId;

  int _level;

  Ancestry _anc;

  List<CharacterClass> _classes;

  AbilityScores _baseAbilityScores;

  Background _background;

  List<Equipment> _items;

  Tweaks _tweaks;

  Character(
      String name,
      int id,
      String userId,
      int level,
      Ancestry anc,
      List<CharacterClass> classes,
      AbilityScores baseAbilityScores,
      Background background,
      List<Equipment> items,
      Tweaks tweaks)
      : _name = name,
        _id = id,
        _userId = userId,
        _level = level,
        _anc = anc,
        _classes = classes,
        _baseAbilityScores = baseAbilityScores,
        _background = background,
        _items = items,
        _tweaks = tweaks;

  factory Character.fromJson(dynamic json) {
    if (json['name'] == null ||
        json['id'] == null ||
        json['userId'] ||
        json['level'] == null ||
        json['anc'] == null ||
        json['classes'] == null ||
        json['baseAbilityScores'] == null ||
        json['background'] == null ||
        json['items'] == null ||
        json['tweaks'] == null) {
      throw ErrorDescription("Null values");
    }
    return Character(
        json['name'] as String,
        json['id'] as int,
        json['userId'] as String,
        json['level'] as int,
        json['anc'] as Ancestry,
        json['classes'] as List<CharacterClass>,
        json['baseAbilityScores' as AbilityScores],
        json['background'] as Background,
        json['items'] as List<Equipment>,
        json['tweaks'] as Tweaks);
  }
}
