part of 'main_bloc.dart';

@immutable
abstract class MainBlocEvent {}

class MainBlocGetFactorial extends MainBlocEvent {}

class MainBlocOnTextChanged extends MainBlocEvent {
  final String? text;

  MainBlocOnTextChanged(this.text);
}
