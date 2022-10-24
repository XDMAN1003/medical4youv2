import '../services/auth/auth_service.dart';
import 'package:get_it/get_it.dart';

import '../services/auth/auth_service_mock.dart';
import '../services/rest.dart';
import '../user_viewmodel.dart';


GetIt dependency = GetIt.instance;

void init() {
  //Services (connect to backend)
  // dependency.registerLazySingleton<RestService>(
  //   () => RestService(baseUrl: 'http://192.168.0.63:3000'),
  // );
  dependency.registerLazySingleton<RestService>(
    () => RestService(baseUrl: 'https://us-central1-jiranku-application.cloudfunctions.net/api'),
  );

  //Firebase Service
  // dependency.registerLazySingleton<AuthService>(() => AuthServiceFirebase());
  // dependency.registerLazySingleton<NewService>(() => NewServiceFirebase());
  // dependency.registerLazySingleton<ProductService>(() => ProductServiceFirebase());

  //Rest Service
  // dependency.registerLazySingleton<AuthService>(() => AuthServiceRest());
  // dependency.registerLazySingleton<NewService>(() => NewServiceRest());
  // dependency.registerLazySingleton<ProductService>(() => ProductServiceRest());

  //Mock Service
  dependency.registerLazySingleton<AuthService>(() => AuthServiceMock());
  // dependency.registerLazySingleton<NewService>(() => NewServiceMock());
  // dependency.registerLazySingleton<ProductService>(() => ProductServiceMock());

  //View models
  dependency.registerLazySingleton<UserViewmodel>(() => UserViewmodel());
}