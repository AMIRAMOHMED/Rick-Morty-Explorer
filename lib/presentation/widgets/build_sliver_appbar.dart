import '../../constants/my_colors.dart';
import '../../models/character_model.dart';
import 'package:flutter/material.dart';

class SliverAppBarWidget extends StatelessWidget {
  final Character character;

  const SliverAppBarWidget({
    Key? key,
    required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 600,
      pinned: true,
      stretch: true,
      backgroundColor: MyColors.myGrey,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Container(
          padding: const EdgeInsets.symmetric( vertical: 4),
          color: Colors.black.withOpacity(0.5),
          child: Text(textAlign:TextAlign.start,
            character.name,
            maxLines: 1,
            style: const TextStyle(
                color: MyColors.myWhite,
                fontSize: 20,
                fontWeight: FontWeight.bold,),
          ),
        ),
        background: Hero(
          tag: character.id,
          child: Image.network(
            character.image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
