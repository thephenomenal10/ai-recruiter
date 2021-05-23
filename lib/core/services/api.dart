import 'dart:convert';
import 'package:ai_recruiter/core/models/jobs.dart';
import 'package:ai_recruiter/core/models/signin.dart';
import 'package:ai_recruiter/core/models/signup.dart';
import "package:shared_preferences/shared_preferences.dart";
import 'package:http/http.dart' as http;

class Api {
  static const endpoint = "https://ai-recruiter.herokuapp.com/api";
  var client = new http.Client();

  Future<Jobs> getAllJobs() async {
    var response = await client.get('$endpoint/job/all');
    return Jobs.fromJson(json.decode(response.body));
  }

  Future<int> register(String name, String email, String password) async {
    final response = await client.post('$endpoint/candidate/signup',
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          "name": name,
          "email": email,
          "password": password
        }));

    if (response.statusCode == 200) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var res = Signup.fromJson(jsonDecode(response.body));
      await prefs.setInt("userId", res.data.id);
      await prefs.setBool("auth", true);
      print(res.data.id);
      return response.statusCode;
    } else {
      // throw Exception("There is something wrong from server");
      return response.statusCode;
    }
  }

  Future<int> login(String email, String password) async {
    final response = await client.post('$endpoint/candidate/login',
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body:
            jsonEncode(<String, String>{"email": email, "password": password}));

    if (response.statusCode == 200) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var res = Signin.fromJson(jsonDecode(response.body));
      await prefs.setInt("userId", res.data.id);
      await prefs.setBool("auth", true);
      print(res.data.id);
      return response.statusCode;
    } else {
      // throw Exception("There is something wrong from server");
      return response.statusCode;
    }
  }
}
