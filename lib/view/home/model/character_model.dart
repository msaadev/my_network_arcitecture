import 'package:arccitecture_example/core/base/model/base_model.dart';

class CharacterModel extends BaseModel<CharacterModel> {
  String? name;
  String? actor;
  int? age;

  CharacterModel({this.actor, this.age, this.name});

  @override
  CharacterModel fromJson(Map json) {
    return CharacterModel(
      actor: json['actor'],
      name: json['name'],
      age: json['age'],
    );
  }

  @override
  Map toJson() {
    var data = {};
    data['name'] = name;
    data['actor'] = actor;
    data['age'] = age;
    return data;
  }
}
