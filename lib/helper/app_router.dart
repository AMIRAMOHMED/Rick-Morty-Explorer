import 'package:bloc_statemangement/constants/strings.dart';
import 'package:bloc_statemangement/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  // ignore: body_might_complete_normally_nullable
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
      return MaterialPageRoute(builder: (_)=>const HomeScreen.charactersScreen());
      
    }
  }
}
