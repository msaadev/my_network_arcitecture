import 'package:arccitecture_example/view/home/model/character_model.dart';

abstract class BaseModel<T> {
  Map toJson();

  T fromJson(Map json);
}

class BaseResponse<R, T extends BaseModel<T>> {
  T? data;
  String? message;
  Error? error;

  BaseResponse({this.data, this.message, this.error});
}

var a = BaseResponse<List<CharacterModel>, CharacterModel>();
