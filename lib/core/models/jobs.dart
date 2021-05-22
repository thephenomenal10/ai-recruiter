class Jobs {
  int status;
  List<Data> data;

  Jobs({this.status, this.data});

  Jobs.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String id;
  String profile;
  String description;
  String qualifications;
  String company;
  String postedOn;
  int candidatesApplied;

  Data(
      {this.id,
      this.profile,
      this.description,
      this.qualifications,
      this.company,
      this.postedOn,
      this.candidatesApplied});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    profile = json['profile'];
    description = json['description'];
    qualifications = json['qualifications'];
    company = json['company'];
    postedOn = json['posted_on'];
    candidatesApplied = json['candidates_applied'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['profile'] = this.profile;
    data['description'] = this.description;
    data['qualifications'] = this.qualifications;
    data['company'] = this.company;
    data['posted_on'] = this.postedOn;
    data['candidates_applied'] = this.candidatesApplied;
    return data;
  }
}
