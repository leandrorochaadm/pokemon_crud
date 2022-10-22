import 'package:pokemon/app/domain/enties/pokemon_entity.dart';

class PokemonsModel {
  final List<PokemonModel> results;

  PokemonsModel({
    required this.results,
  });

  factory PokemonsModel.fromJson(Map json) {
    List<PokemonModel> results = [];
    if (json['results'] != null) {
      json['results'].forEach((v) {
        results.add(PokemonModel.fromJson(v));
      });
    }
    return PokemonsModel(results: results);
  }
  toEntity() =>
      results.map<PokemonEntity>((PokemonModel e) => e.toEntity()).toList();
}

class PokemonModel {
  String name;
  String url;

  PokemonModel({
    required this.name,
    required this.url,
  });

  factory PokemonModel.fromJson(Map json) =>
      PokemonModel(name: json['name'], url: json['url']);

  String getNumber() {
    final parts = url.split('/');
    final numParts = parts.length;
    final num = parts[numParts - 2];
    return num;
  }

  toEntity() => PokemonEntity(
        name: name,
        number: getNumber(),
      );
}
