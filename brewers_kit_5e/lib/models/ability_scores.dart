import 'package:flutter/material.dart';

class AbilityScores {
  int _strength;
  int _dexterity;
  int _constitution;
  int _intelligence;
  int _wisdom;
  int _charisma;

  int get strength => _strength;

  set strength(int value) => _strength = value;

  get dexterity => _dexterity;

  set dexterity(value) => _dexterity = value;

  get constitution => _constitution;

  set constitution(value) => _constitution = value;

  get intelligence => _intelligence;

  set intelligence(value) => _intelligence = value;

  get wisdom => _wisdom;

  set wisdom(value) => _wisdom = value;

  get charisma => _charisma;

  set charisma(value) => _charisma = value;

  AbilityScores(int strength, int dexterity, int constitution, int intelligence,
      int wisdom, int charisma)
      : _strength = strength,
        _dexterity = dexterity,
        _constitution = constitution,
        _intelligence = intelligence,
        _wisdom = wisdom,
        _charisma = charisma;

  factory AbilityScores.fromJson(dynamic json) {
    if (json['strength'] == null ||
        json['dexterity'] == null ||
        json['constitution'] == null ||
        json['intelligence'] == null ||
        json['wisdom'] == null ||
        json['charisma'] == null) {
      throw ErrorDescription("Null values");
    }
    return AbilityScores(
        json['strength'] as int,
        json['dexterity'] as int,
        json['consititution'] as int,
        json['intelligence'] as int,
        json['wisdom'] as int,
        json['charisma'] as int);
  }
}
