import 'package:equatable/equatable.dart';

import '../../domain/enties/enties.dart';

class DetailModel extends DetailEntity with EquatableMixin {
  DetailModel({
    required super.abilities,
    required super.baseExperience,
    required super.forms,
    required super.height,
    required super.id,
    required super.moves,
    required super.name,
    required super.order,
    required super.species,
    required super.types,
    required super.weight,
  });

  factory DetailModel.fromJson(dynamic json) {
    List<String> abilities = [];
    final List<dynamic> abilitiesJson = json['abilities'];
    for (var abilityJson in abilitiesJson) {
      final abilityName = abilityJson['ability']['name'];
      abilities.add(abilityName);
    }

    List<String> forms = [];
    List<String> moves = [];
    List<String> types = [];

    return DetailModel(
      abilities: abilities,
      baseExperience: json['base_experience'] ?? 0,
      forms: forms,
      height: json['height'] ?? 0,
      id: json['id'] ?? 0,
      moves: moves,
      name: json['name'] ?? '',
      order: json['order'] ?? 0,
      species: json['species']['name'] ?? '',
      types: types,
      weight: json['order'] ?? 0,
    );
  }
}
