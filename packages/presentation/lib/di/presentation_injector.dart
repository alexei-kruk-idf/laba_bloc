import 'package:domain/usecase/factorial_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:presentation/screen/main/bloc/main_bloc.dart';

void initPresentationInjector() {
  GetIt.I.registerFactory<MainBloc>(
    () => MainBloc(
      GetIt.I.get<FactorialUseCase>(),
    ),
  );
}
