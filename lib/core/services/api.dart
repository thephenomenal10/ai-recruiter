import 'dart:convert';
import 'package:ai_recruiter/core/models/jobs.dart';
import 'package:http/http.dart' as http;

class Api {
  static const endpoint = "https://ai-recruiter.herokuapp.com/api";
  var client = new http.Client();

  Future<Jobs> getAllJobs() async {
    var response = await client.get('$endpoint/job/all');
    return Jobs.fromJson(json.decode(response.body));
  }
}
