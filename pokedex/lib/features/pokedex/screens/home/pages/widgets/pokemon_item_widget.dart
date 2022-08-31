import 'package:flutter/material.dart';
import 'package:pokedex/common/models/pokemon.dart';
import 'package:pokedex/features/pokedex/screens/home/pages/widgets/type_widget.dart';

class PokemonItemWidget extends StatelessWidget {
  const PokemonItemWidget({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: pokemon.baseColor!.withOpacity(0.8),
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(pokemon.name),
                  Text(pokemon.num),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end, // .start
                mainAxisAlignment: MainAxisAlignment.end, // .start
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: pokemon.type
                        .map((e) => TypeWidget(
                              name: e,
                            ))
                        .toList(),
                  ),
                  Flexible(
                    child: Image.network(pokemon.image),
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
