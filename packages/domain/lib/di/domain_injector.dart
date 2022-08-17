import 'package:get_it/get_it.dart';

import '../repository/palindrome_repository.dart';
import '../usecase/palindrome_usecase.dart';

void initDomainInjector() {
  GetIt.I.registerFactory<PalindromeUseCase>(
    () => PalindromeUseCase(
      GetIt.I.get<PalindromeRepository>(),
    ),
  );
}
