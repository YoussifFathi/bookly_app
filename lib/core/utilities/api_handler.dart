import 'package:dio/dio.dart';

class ApiHandler{
  final String _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;
  ApiHandler(this._dio);

  Future<Map<String,dynamic>> get({required String endPoints})async{
   Response response = await _dio.get(_baseUrl+endPoints);
   return response.data;
  }

}