import 'package:domain/usecase/palindrome_usecase.dart';
import 'package:get_it/get_it.dart';

import '../screen/main/main_bloc.dart';

void initPresentation() {
  GetIt.I.registerFactory<MainBloc>(
    () => MainBloc(
      GetIt.I.get<PalindromeUseCase>(),
    ),
  );
}
