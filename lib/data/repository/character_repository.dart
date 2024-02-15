import '../web_serviecs/character_web_services.dart';

import '../../models/character_model.dart';

class CharactersRepository {
  CharactersRepository(this.characterWebServices);

  final CharacterWebServices characterWebServices;

  Future<List<Character>> getAllCharacters() async {
    final characters = await characterWebServices.getAllCharacters();

    return characters
        .map((character) => Character.fromJson(character))
        .toList();
  }
}
