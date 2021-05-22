
import 'package:get_it/get_it.dart';

import 'core/services/api.dart';
import 'core/viewModels/jobs_model.dart';

GetIt locator = GetIt.instance;
void setupLocator() {
  locator.registerLazySingleton(() => Api());
  locator.registerFactory(() => JobsModel());
}
