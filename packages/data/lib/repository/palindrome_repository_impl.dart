import 'package:domain/repository/palindrome_repository.dart';

import '../service/api_base_service.dart';
import '../utils/const.dart';

class PalindromeRepositoryImpl implements PalindromeRepository {
  final ApiBaseService _apiService;

  PalindromeRepositoryImpl(this._apiService);

  @override
  Future<String> getFactorial(int n) async {
    final params = {'expr': 'factorial($n)'};
    return _apiService.get(C.apiPath, queryParameters: params).then(
          (response) => response.data,
        );
  }
}
