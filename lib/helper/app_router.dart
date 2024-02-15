import '../business_logic/cubit/character_cubit.dart';
import '../constants/strings.dart';
import '../data/repository/character_repository.dart';
import '../data/web_serviecs/character_web_services.dart';
import '../models/character_model.dart';
import '../presentation/screens/character_details_screen.dart';
import '../presentation/screens/character_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  late CharacterCubit characterCubit;
  late CharactersRepository charactersRepository;

  AppRouter() {
    charactersRepository = CharactersRepository(CharacterWebServices());
    characterCubit = CharacterCubit(charactersRepository);
  }
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => characterCubit,
            child: const CharacterScreen(),
          ),
        );
      case characterDetailsScreen:
        final character = settings.arguments as Character;
        return MaterialPageRoute(
            builder: (_) => CharacterDetailsScreen(
                  character: character,
                ));
    }
    return null;
  }
}
