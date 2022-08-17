import 'package:domain/repository/palindrome_repository.dart';

import '../service/api_base_service.dart';
import '../utils/const.dart';

class PalindromeRepositoryImpl implements PalindromeRepository {
  final ApiBaseService _apiService;

  PalindromeRepositoryImpl(this._apiService);

  @override
  Future<int> getPalindrome(int n) async =>
      _apiService.get(C.path).then((response) => response.data);
}
