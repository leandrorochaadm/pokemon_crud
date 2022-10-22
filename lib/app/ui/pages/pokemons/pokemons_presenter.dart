import 'package:flutter/material.dart';
import 'package:pokemon/app/domain/enties/pokemon_entity.dart';
import 'package:pokemon/app/domain/usecases/get_pokemons.dart';
import 'package:pokemon/app/presentation/base_presenter.dart';

abstract class PokemonsPresenter extends BasePresenter {
  final GetPokemons getPokemons;

  late ValueNotifier<List<PokemonEntity>> pokemons;

  PokemonsPresenter({required this.getPokemons});

  Future<void> loadPokemons();
}
