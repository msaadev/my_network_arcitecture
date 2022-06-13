// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewModel on _HomeViewModelBase, Store {
  Computed<bool>? _$isCharacterListNotEmptyComputed;

  @override
  bool get isCharacterListNotEmpty => (_$isCharacterListNotEmptyComputed ??=
          Computed<bool>(() => super.isCharacterListNotEmpty,
              name: '_HomeViewModelBase.isCharacterListNotEmpty'))
      .value;

  late final _$characterListAtom =
      Atom(name: '_HomeViewModelBase.characterList', context: context);

  @override
  ObservableList<CharacterModel>? get characterList {
    _$characterListAtom.reportRead();
    return super.characterList;
  }

  @override
  set characterList(ObservableList<CharacterModel>? value) {
    _$characterListAtom.reportWrite(value, super.characterList, () {
      super.characterList = value;
    });
  }

  late final _$fetchCharactersAsyncAction =
      AsyncAction('_HomeViewModelBase.fetchCharacters', context: context);

  @override
  Future<dynamic> fetchCharacters() {
    return _$fetchCharactersAsyncAction.run(() => super.fetchCharacters());
  }

  @override
  String toString() {
    return '''
characterList: ${characterList},
isCharacterListNotEmpty: ${isCharacterListNotEmpty}
    ''';
  }
}
