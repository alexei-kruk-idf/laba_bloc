import 'package:bloc/bloc.dart';
import 'package:domain/usecase/palindrome_usecase.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainBlocState> {
  final PalindromeUseCase _useCase;
  final _editController = TextEditingController();
  TextEditingController get editController => _editController;

  MainCubit(this._useCase) : super(MainBlocState.init());

  void onTextChanged(String value) => emit(state.copyWith(currentValue: value));

  void getFactorial() async {
    emit(state.copyWith(isLoading: true));
    final currentValue = int.tryParse(state.currentValue) ?? 0;
    final factorial = await _useCase.getFactorial(currentValue);
    emit(
      state.copyWith(
        factorial: factorial,
        isLoading: false,
      ),
    );
  }
}
