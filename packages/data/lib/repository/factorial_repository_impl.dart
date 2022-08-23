import 'package:domain/repository/factorial_repository.dart';
import '../service/api_base_service.dart';
import '../utils/const.dart';

class FactorialRepositoryImpl implements FactorialRepository {
  final ApiBaseService _apiService;

  FactorialRepositoryImpl(this._apiService);

  @override
  Future<String> getFactorial(int n) async {
    final params = {'expr': 'factorial($n)'};
    return _apiService.get(C.apiPath, queryParameters: params).then(
          (response) => response.data,
        );
  }
}
