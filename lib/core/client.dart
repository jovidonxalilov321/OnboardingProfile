import 'package:dio/dio.dart';

class ApiClient {
  Dio dio = Dio(BaseOptions(baseUrl: "http://192.168.9.122:8888/api/v1"));

  Future<List<dynamic>> fetchMyProfile() async {
    var response = await dio.get('/onboarding/list');
    if (response.statusCode == 200) {
      List<dynamic> data = response.data;
      return data;
    }else{
      throw Exception("Malumot yoq");
    }
  }
  Future<List<dynamic>> fetchMyOnboarding() async {
    var response = await dio.get('/recipes/list');
    if (response.statusCode == 200) {
      List<dynamic> data = response.data;
      return data;
    }else{
      throw Exception("Malumot yoq");
    }
  }

  Future<List<dynamic>> fetchMyCategory() async {
    var response = await dio.get('/admin/categories/list');
    if (response.statusCode == 200) {
      List<dynamic> data = response.data;
      return data;
    }else{
      throw Exception("Malumot yoq");
    }
  }
}
