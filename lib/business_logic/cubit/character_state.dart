part of 'character_cubit.dart';

@immutable
abstract class CharacterState {}

final class CharacterInitial extends CharacterState {}

final class CharacterLoaeded extends CharacterState {
  final List<Character> characters;

  CharacterLoaeded({required this.characters});
}
