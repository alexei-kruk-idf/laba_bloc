import 'package:domain/usecase/factorial_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:presentation/screen/main/cubit/main_cubit.dart';

void initPresentationInjector() {
  GetIt.I.registerFactory<MainCubit>(
    () => MainCubit(
      GetIt.I.get<FactorialUseCase>(),
    ),
  );
}
