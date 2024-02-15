import '../../constants/my_colors.dart';
import '../../models/character_model.dart';
import '../widgets/build_sliver_appbar.dart';
import '../widgets/sliver_list.dart';
import 'package:flutter/material.dart';

class CharacterDetailsScreen extends StatelessWidget {
  const CharacterDetailsScreen({Key? key, required this.character})
      : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myGrey,
      body: CustomScrollView(
        slivers: [
          SliverAppBarWidget(character: character),
          MySliverList(
            character: character,
          ),
        ],
      ),
    );
  }
}
