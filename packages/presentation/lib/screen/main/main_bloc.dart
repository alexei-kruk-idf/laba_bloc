import 'package:domain/usecase/palindrome_usecase.dart';
import 'package:flutter/material.dart';
import 'package:presentation/screen/main/main_tile.dart';

import '../../base/bloc.dart';

abstract class MainBloc extends Bloc {
  factory MainBloc(PalindromeUseCase useCase) => MainBlocImpl(useCase);
  void getFactorial();
  TextEditingController get editController;
}

class MainBlocImpl extends BlocImpl implements MainBloc {
  final _tile = MainTile.init();
  final _editController = TextEditingController();
  final PalindromeUseCase _useCase;

  MainBlocImpl(this._useCase);

  @override
  void initState() {
    super.initState();
    _updateData(data: _tile);
  }

  _updateData({bool? isLoading, MainTile? data}) {
    handleData(
      isLoading: isLoading,
      data: data,
    );
  }

  @override
  void getFactorial() async {
    final currentValue = int.tryParse(_editController.text) ?? 0;
    final factorial = await _useCase.getFactorial(currentValue);
    _tile.factorial = factorial;
    _updateData(data: _tile);
  }

  @override
  TextEditingController get editController => _editController;
}
