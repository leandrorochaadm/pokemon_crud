import '../enties/pokemon_entity.dart';

abstract class GetPokemons {
  Future<List<PokemonEntity>> call();
}
