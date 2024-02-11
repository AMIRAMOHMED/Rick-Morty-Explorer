import 'package:bloc_statemangement/data/models/character_model.dart';
import 'package:bloc_statemangement/data/web_serviecs/character_web_services.dart';

class CharactersRepository{


  final CharacterWebServices characterWebServices;

  CharactersRepository({required this.characterWebServices});
    Future<List<dynamic>> getAllCharacters() async {
      final Characters=await characterWebServices.getAllCharacters();

      return Characters.map((character) => Character.fromJson(character)).toList();
    }


}