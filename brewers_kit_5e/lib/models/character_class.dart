import 'package:brewers_kit_5e/models/subclass.dart';
import 'package:brewers_kit_5e/models/feature.dart';

class CharacterClass {
  String _name;

  int _level;

  List<int> _hitPoints;

  double _casterType;

  Subclass _subclass;

  List<Feature> _classFeatures;

  get name => _name;

  set name(value) => _name = value;

  get level => _level;

  set level(value) => _level = value;

  get hitPoints => _hitPoints;

  set hitPoints(value) => _hitPoints = value;

  get casterType => _casterType;

  set casterType(value) => _casterType = value;

  get subclass => _subclass;

  set subclass(value) => _subclass = value;

  get classFeatures => _classFeatures;

  set classFeatures(value) => _classFeatures = value;

  CharacterClass(String name, int level, List<int> hitPoints, double casterType,
      Subclass subclass, List<Feature> classFeatures)
      : _name = name,
        _level = level,
        _hitPoints = hitPoints,
        _casterType = casterType,
        _subclass = subclass,
        _classFeatures = classFeatures;

  int getLevel() {
    return _level;
  }

  double getCasterType() {
    return _casterType;
  }
}
