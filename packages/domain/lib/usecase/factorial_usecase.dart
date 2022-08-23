import '../repository/factorial_repository.dart';

abstract class FactorialUseCase {
  factory FactorialUseCase(FactorialRepository repository) => FactorialUseCaseImpl(repository);
  Future<String> getFactorial(int n);
}

class FactorialUseCaseImpl implements FactorialUseCase {
  final FactorialRepository _repository;

  FactorialUseCaseImpl(this._repository);
  @override
  Future<String> getFactorial(int n) {
    return _repository.getFactorial(n);
  }
}
