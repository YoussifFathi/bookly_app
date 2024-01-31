import 'package:bookly_app/core/utilities/api_handler.dart';
import 'package:bookly_app/features/home/model/repos/home_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator(){

  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<ApiHandler>(ApiHandler(
    getIt.get<Dio>(),
  ));
  
  getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(
    getIt.get<ApiHandler>(),
  ));
}
