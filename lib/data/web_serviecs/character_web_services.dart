import '../../constants/strings.dart';
import 'package:dio/dio.dart';

class CharacterWebServices {
  CharacterWebServices() {
    BaseOptions options = BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20));
    dio = Dio(options);
  }

  late Dio dio;

  Future<List<dynamic>> getAllCharacters() async {
    try {
      Response response = await dio.get("character");
      List<dynamic> characters = response.data['results'];
      return characters;
    } catch (e) {
      return [];
    }
  }
}
