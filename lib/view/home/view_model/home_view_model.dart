import 'package:arccitecture_example/core/service/methods/character_methods.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../model/character_model.dart';
part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  final BuildContext ctx;
  late final CharacterMethods characterMethods;

  _HomeViewModelBase(this.ctx) {
    characterMethods = CharacterMethods.instance;
    fetchCharacters();
  }

  @observable
  ObservableList<CharacterModel>? characterList;

  @computed
  bool get isCharacterListNotEmpty =>
      characterList != null && characterList!.isNotEmpty;

  @action
  Future fetchCharacters() async {
    var response = await characterMethods.fetchCharacters();
    characterList = ObservableList<CharacterModel>();
    if (response != null) {
      characterList!.addAll(response);
    }
  }
}
