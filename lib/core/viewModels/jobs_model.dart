
import 'package:ai_recruiter/core/enums/viewState.dart';
import 'package:ai_recruiter/core/models/jobs.dart';
import 'package:ai_recruiter/core/services/api.dart';

import '../../locator.dart';
import 'base_model.dart';

class JobsModel extends BaseModel {
  Api _api = locator<Api>();
  Jobs jobs;

  Future getJobs() async {
    setState(ViewState.Busy);
    jobs = await _api.getAllJobs();
    setState(ViewState.Idle);
  }
}
