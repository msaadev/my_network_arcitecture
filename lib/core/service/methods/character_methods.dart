import 'package:arccitecture_example/core/service/network.dart';
import 'package:arccitecture_example/view/home/model/character_model.dart';

class CharacterMethods {
  late final Network _network;

  static CharacterMethods? _instance;
  static CharacterMethods get instance {
    _instance ??= CharacterMethods._init();
    return _instance!;
  }

  CharacterMethods._init() {
    _network = Network.instance;
  }

  Future<List<CharacterModel>?> fetchCharacters() async {
    var response = await _network.get<List<CharacterModel>?, CharacterModel>(
        endPoint: 'characters', model: CharacterModel());
      return response;
    
  }
}
