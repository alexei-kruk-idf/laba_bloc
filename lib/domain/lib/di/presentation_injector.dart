import 'package:get_it/get_it.dart';

import '../usecase/palindrome_usecase.dart';

void initDomain() {
  GetIt.I.registerFactory<PalindromeUseCase>(() => PalindromeUseCase());
}
