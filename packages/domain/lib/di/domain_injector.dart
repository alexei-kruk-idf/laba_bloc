import 'package:get_it/get_it.dart';

import '../repository/factorial_repository.dart';
import '../usecase/factorial_usecase.dart';

void initDomainInjector() {
  GetIt.I.registerFactory<FactorialUseCase>(
    () => FactorialUseCase(
      GetIt.I.get<FactorialRepository>(),
    ),
  );
}
