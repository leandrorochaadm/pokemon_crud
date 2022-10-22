import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:pokemon/app/domain/enties/pokemon_entity.dart';
import 'package:pokemon/app/domain/usecases/get_pokemons.dart';
import 'package:pokemon/app/ui/pages/pokemons/pokemons_presenter.dart';

class ValueNotifierPokemonsPresenter implements PokemonsPresenter {
  @override
  GetPokemons getPokemons;

  @override
  ValueNotifier<List<PokemonEntity>> pokemons = ValueNotifier([]);

  ValueNotifierPokemonsPresenter({required this.getPokemons});

  @override
  void dispose() {
    pokemons.dispose();
  }

  @override
  void init() {
    pokemons = ValueNotifier([]);
  }

  @override
  Future<void> loadPokemons() async {
    pokemons.value = await getPokemons.call();
  }
}
