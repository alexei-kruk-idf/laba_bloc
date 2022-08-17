import 'package:domain/usecase/palindrome_usecase.dart';

import '../../base/bloc.dart';

abstract class MainBloc extends Bloc {
  factory MainBloc(PalindromeUseCase useCase) => MainBlocImpl(useCase);
  Future<int> getPalindrome(int n);
}

class MainBlocImpl extends BlocImpl implements MainBloc {
  final PalindromeUseCase _useCase;

  MainBlocImpl(this._useCase);

  @override
  Future<int> getPalindrome(int n) async {
    return await _useCase.getPalindrome(5);
  }
}
