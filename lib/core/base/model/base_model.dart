import 'package:arccitecture_example/view/home/model/character_model.dart';

abstract class BaseModel<T> {
  Map toJson();

  T fromJson(Map json);
}
