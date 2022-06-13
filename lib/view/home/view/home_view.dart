import 'package:arccitecture_example/view/home/model/character_model.dart';
import 'package:arccitecture_example/view/home/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final HomeViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = HomeViewModel(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (_) {
        return viewModel.isCharacterListNotEmpty
            ? _buildBody()
            : _buildLoader();
      }),
    );
  }

  Center _buildLoader() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  ListView _buildBody() {
    return ListView.builder(
      itemCount: viewModel.characterList!.length,
      itemBuilder: (context, index) {
        var item = viewModel.characterList![index];
        return _buildItem(item);
      },
    );
  }

  Widget _buildItem(CharacterModel item) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(item.name ?? ''),
      );
}
