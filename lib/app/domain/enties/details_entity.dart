import 'package:equatable/equatable.dart';

class DetailsEntity extends Equatable {
  List<String> abilities;
  int baseExperience;
  List<String> forms;
  int height;
  int id;
  List<String> moves;
  String name;
  int order;
  List<String> types;
  int weight;
  String species;

  DetailsEntity({
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
