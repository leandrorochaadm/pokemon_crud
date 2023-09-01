import 'package:equatable/equatable.dart';

class DetailEntity extends Equatable {
  final List<String> abilities;
  final int baseExperience;
  final List<String> forms;
  final int height;
  final int id;
  final List<String> moves;
  final String name;
  final int order;
  final List<String> types;
  final int weight;
  final String species;

  const DetailEntity({
    required this.abilities,
    required this.baseExperience,
    required this.forms,
    required this.height,
    required this.id,
    required this.moves,
    required this.name,
    required this.order,
    required this.species,
    required this.types,
    required this.weight,
  });

  const DetailEntity.empty()
      : abilities = const [],
        weight = 0,
        types = const [],
        species = '',
        order = 0,
        name = '',
        moves = const [],
        height = 0,
        baseExperience = 0,
        forms = const [],
        id = 0;

  @override
  List<Object?> get props => [
        abilities,
        baseExperience,
        forms,
        height,
        id,
        moves,
        name,
        order,
        species,
        types,
        weight,
      ];
}
