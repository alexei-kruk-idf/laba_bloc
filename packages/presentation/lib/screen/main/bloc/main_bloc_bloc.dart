import 'package:bloc/bloc.dart';
import 'package:domain/usecase/palindrome_usecase.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'main_bloc_event.dart';
part 'main_bloc_state.dart';

class MainBloc extends Bloc<MainBlocEvent, MainBlocState> {
  final PalindromeUseCase _useCase;
  final _editController = TextEditingController();
  TextEditingController get editController => _editController;
  MainBloc(this._useCase) : super(MainBlocState.init()) {
    on<MainBlocEvent>((event, emit) {});

    on<MainBlocFactorialEvent>(
      (event, emit) async {
        final currentValue = int.tryParse(_editController.text) ?? 0;
        final factorial = await _useCase.getFactorial(currentValue);
        emit(MainBlocState(factorial));
      },
    );
  }
}
