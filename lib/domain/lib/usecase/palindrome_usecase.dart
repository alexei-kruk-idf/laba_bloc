abstract class PalindromeUseCase {
  factory PalindromeUseCase() => PalindromeUseCaseImpl();
  Future<int> getPalindrome(int n);
}

class PalindromeUseCaseImpl implements PalindromeUseCase {
  @override
  Future<int> getPalindrome(int n) {
    return Future.value(1);
  }
}
