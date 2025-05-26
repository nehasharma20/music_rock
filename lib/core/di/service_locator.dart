import 'package:get_it/get_it.dart';
import '../../data/repository/service_repository.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton<ServiceRepository>(() => ServiceRepository());
}
