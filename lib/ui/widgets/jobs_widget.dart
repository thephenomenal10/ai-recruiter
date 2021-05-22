
import 'package:ai_recruiter/core/enums/viewState.dart';
import 'package:ai_recruiter/core/viewModels/jobs_model.dart';
import 'package:ai_recruiter/ui/widgets/single_job_widget.dart';
import 'package:flutter/material.dart';

import '../base_view.dart';
import 'open_sheet_widget.dart';

class Jobs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<JobsModel>(
      onModelReady: (model) {
        model.getJobs();
      },
      builder: (context, model, child) => Container(
        height: 200,
        width: 350,
        child: model.state == ViewState.Busy
            ? CircularProgressIndicator()
            : ListView.builder(
                shrinkWrap: true,
                itemCount: model.jobs.data.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 900,
                    child: GestureDetector(
                      onTap: () {
                        openBottomSheet(
                          context: context,
                          company: model.jobs.data[index].company,
                          profile: model.jobs.data[index].profile,
                          description: model.jobs.data[index].description,
                        );
                      },
                      child: Job(
                        profile: model.jobs.data[index].profile,
                        company: model.jobs.data[index].company,
                        postedOn: model.jobs.data[index].postedOn,
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
