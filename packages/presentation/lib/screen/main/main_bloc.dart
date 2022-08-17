import 'package:domain/usecase/palindrome_usecase.dart';
import 'package:presentation/screen/main/main_tile.dart';

import '../../base/bloc.dart';

abstract class MainBloc extends Bloc {
  factory MainBloc(PalindromeUseCase useCase) => MainBlocImpl(useCase);
  void getPalindrome(int n);
}

class MainBlocImpl extends BlocImpl implements MainBloc {
  final _tile = MainTile.init();
  final PalindromeUseCase _useCase;

  MainBlocImpl(this._useCase);

  _updateDate({bool? isLoading, MainTile? data}) {
    handleData(isLoading: isLoading, data: data);
  }

  @override
  void getPalindrome(int n) async {
    final factorial = await _useCase.getPalindrome(5);
    _tile.factorial = factorial;
    _updateDate(data: _tile);
  }
}
