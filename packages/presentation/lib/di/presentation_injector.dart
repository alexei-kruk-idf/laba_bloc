import 'package:domain/usecase/palindrome_usecase.dart';
import 'package:get_it/get_it.dart';

import '../screen/main/main_bloc.dart';

void initPresentationInjector() {
  GetIt.I.registerFactory<MainBloc>(
    () => MainBlocImpl(
      GetIt.I.get<PalindromeUseCase>(),
    ),
  );
}
