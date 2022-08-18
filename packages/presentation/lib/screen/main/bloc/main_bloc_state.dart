part of 'main_bloc_bloc.dart';

class MainBlocState {
  final String factorial;

  const MainBlocState(this.factorial);

  factory MainBlocState.init() => MainBlocState('0');
}
