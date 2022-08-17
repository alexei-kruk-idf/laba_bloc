import '../repository/palindrome_repository.dart';

abstract class PalindromeUseCase {
  factory PalindromeUseCase(PalindromeRepository repository) => PalindromeUseCaseImpl(repository);
  Future<int> getPalindrome(int n);
}

class PalindromeUseCaseImpl implements PalindromeUseCase {
  final PalindromeRepository _repository;

  PalindromeUseCaseImpl(this._repository);
  @override
  Future<int> getPalindrome(int n) {
    return _repository.getPalindrome(n);
  }
}
