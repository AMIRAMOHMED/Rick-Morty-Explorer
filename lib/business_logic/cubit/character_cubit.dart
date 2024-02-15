import 'package:bloc/bloc.dart';
import '../../data/repository/character_repository.dart';
import '../../models/character_model.dart';
import 'package:flutter/material.dart';

part 'character_state.dart';

class CharacterCubit extends Cubit<CharacterState> {
  CharacterCubit(this.charactersRepository) : super(CharacterInitial());

  List<Character> characters = [];
  final CharactersRepository charactersRepository;

  List<Character> getAllCharacters() {
    charactersRepository.getAllCharacters().then((characters) {
      emit(CharacterLoaeded(characters: characters));
      this.characters = characters;
    });
    return characters;
  }
}
