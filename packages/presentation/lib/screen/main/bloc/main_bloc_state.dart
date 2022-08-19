part of 'main_bloc.dart';

class MainBlocState {
  final String factorial;
  final String currentValue;
  final bool isLoading;

  MainBlocState({
    required this.factorial,
    this.currentValue = '',
    this.isLoading = false,
  });

  factory MainBlocState.init() => MainBlocState(
        factorial: '0',
        currentValue: '',
        isLoading: false,
      );

  MainBlocState copyWith({
    String? factorial,
    String? currentValue,
    bool? isLoading,
  }) {
    return MainBlocState(
      factorial: factorial ?? this.factorial,
      currentValue: currentValue ?? this.currentValue,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
