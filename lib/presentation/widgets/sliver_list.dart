import '../../constants/my_colors.dart';
import '../../models/character_model.dart';
import 'package:flutter/material.dart';

class MySliverList extends StatelessWidget {
  const MySliverList({Key? key, required this.character}) : super(key: key);
  final Character character;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            padding: EdgeInsets.all(
              size.width * .02,
            ),
            margin: EdgeInsets.fromLTRB(
                size.width * 0.04, size.height * 0.04, size.height * 0.04, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                characterInfo(
                  title: "Status : ",
                  value: character.statusdeadorlife == "unknown"
                      ? ""
                      : character.statusdeadorlife,
                ),
                buildDivider(endIndent: size.width * .63),
                characterInfo(
                  title: "Species : ",
                  value: character.species,
                ),
                buildDivider(endIndent: size.width * .63),
                characterInfo(
                  title: "Gender : ",
                  value: character.gender,
                ),
                buildDivider(endIndent: size.width * .63),
                characterInfo(
                  title: "Created Date : ",
                  value:
                      Character.formatCreatedDate(character.created).toString(),
                ),
                buildDivider(endIndent: size.width * .5),
                characterInfo(
                  title: "Character's episodes : ",
                  value: character.getEpisodeNumber(0).toString(),
                ),
                buildDivider(endIndent: size.width * .3),
                const SizedBox(
                  height: 100,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget characterInfo({required title, required String value}) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: title,
          style: const TextStyle(
              color: MyColors.myWhite,
              fontWeight: FontWeight.bold,
              fontSize: 19),
        ),
        TextSpan(
          text: value,
          style: const TextStyle(
              color: MyColors.myWhite,
              fontWeight: FontWeight.bold,
              fontSize: 16),
        ),
      ]),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget buildDivider({required double endIndent}) {
    return Divider(
        endIndent: endIndent, thickness: 3, height: 30, color: Colors.yellow);
  }
}
