import 'package:dio/dio.dart';

import '../../../data/models/pokemons_model.dart';
import '../../../domain/enties/pokemon_entity.dart';
import '../../../domain/usecases/get_pokemons.dart';

class PokeapiGetPokemons implements GetPokemons {
  final Dio dio;
  final String baseUrl;

  PokeapiGetPokemons({required this.dio, required this.baseUrl});

  @override
  Future<List<PokemonEntity>> call() async {
    try {
      final res = await dio.get("$baseUrl/pokemon");
      final models = PokemonsModel.fromJson(res.data).toEntity();
      return models;
    } catch (e) {
      throw Exception("Não foi possível obter lista de Pokemons");
    }
  }
}
