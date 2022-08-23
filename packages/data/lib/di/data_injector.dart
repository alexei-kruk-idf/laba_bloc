import 'package:dio/dio.dart';
import 'package:domain/repository/factorial_repository.dart';
import 'package:get_it/get_it.dart';
import '../repository/factorial_repository_impl.dart';
import '../service/api_base_service.dart';

void initDataInjector() {
  GetIt.I.registerSingleton<ApiBaseService>(
    ApiBaseService(
      Dio(
        BaseOptions(
          sendTimeout: 5000,
          receiveTimeout: 5000,
        ),
      ),
    ),
  );

  GetIt.I.registerSingleton<FactorialRepository>(
    FactorialRepositoryImpl(
      GetIt.I.get<ApiBaseService>(),
    ),
  );
}
