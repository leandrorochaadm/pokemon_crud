import 'package:equatable/equatable.dart';

import '../../domain/enties/enties.dart';

class DetailsModel extends DetailsEntity with EquatableMixin {
  DetailsModel({
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

  factory DetailsModel.fromJson(dynamic json) {
    List<String> abilities = [];
    final List<dynamic> abilitiesJson = json['abilities'];
    for (var abilityJson in abilitiesJson) {
      final abilityName = abilityJson['name'];
      abilities.add(abilityName);
    }

    List<String> forms = [];
    List<String> moves = [];
    List<String> types = [];

    return DetailsModel(
      abilities: abilities,
      baseExperience: int.parse(json['baseExperience'] ?? 0),
      forms: forms,
      height: int.parse(json['height'] ?? 0),
      id: int.parse(json['id'] ?? 0),
      moves: moves,
      name: json['name'] ?? '',
      order: int.parse(json['order'] ?? 0),
      species: json['species'],
      types: types,
      weight: int.parse(json['weight'] ?? 0),
    );
  }
}
