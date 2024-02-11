import 'package:bloc_statemangement/constants/strings.dart';
import 'package:dio/dio.dart';

class CharacterWebServices {
  late Dio dio;

  CharacterWebServices() {
    BaseOptions options = BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20));
    dio = Dio(options);
  }
  Future<List<dynamic>> getAllCharacters() async {
    try {
      Response response = await dio.get("character");
      print(response.data);
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
