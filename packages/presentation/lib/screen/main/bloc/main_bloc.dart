import 'package:bloc/bloc.dart';
import 'package:domain/usecase/palindrome_usecase.dart';
import 'package:flutter/material.dart';

part 'main_bloc_event.dart';
part 'main_bloc_state.dart';

class MainBloc extends Bloc<MainBlocEvent, MainBlocState> {
  final PalindromeUseCase _useCase;
  final _editController = TextEditingController();
  TextEditingController get editController => _editController;

  MainBloc(this._useCase) : super(MainBlocState.init()) {
    on<MainBlocEvent>((event, emit) {});

    on<MainBlocGetFactorial>(_getFactorial);

    on<MainBlocOnTextChanged>(_onTextChanged);
  }
  void onTextChanged(String value) => add(MainBlocOnTextChanged(value));

  void _onTextChanged(
    MainBlocOnTextChanged event,
    Emitter<MainBlocState> emit,
  ) =>
      emit(state.copyWith(currentValue: event.text));

  void _getFactorial(
    MainBlocGetFactorial event,
    Emitter<MainBlocState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final currentValue = int.tryParse(state.currentValue) ?? 0;
    final factorial = await _useCase.getFactorial(currentValue);

    emit(state.copyWith(
      factorial: factorial,
      isLoading: false,
    ));
  }
}
