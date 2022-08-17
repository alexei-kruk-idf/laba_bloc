import '../repository/palindrome_repository.dart';

abstract class PalindromeUseCase {
  factory PalindromeUseCase(PalindromeRepository repository) => PalindromeUseCaseImpl(repository);
  Future<String> getFactorial(int n);
}

class PalindromeUseCaseImpl implements PalindromeUseCase {
  final PalindromeRepository _repository;

  PalindromeUseCaseImpl(this._repository);
  @override
  Future<String> getFactorial(int n) {
    return _repository.getFactorial(n);
  }
}
