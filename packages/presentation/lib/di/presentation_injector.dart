import 'package:get_it/get_it.dart';

import '../screen/main/main_bloc.dart';
import 'package:domain/usecase/factorial_usecase.dart';

void initPresentationInjector() {
  GetIt.I.registerFactory<MainBloc>(
    () => MainBlocImpl(
      GetIt.I.get<FactorialUseCase>(),
    ),
  );
}
