import 'package:equatable/equatable.dart';
import 'package:pokemon/app/domain/enties/enties.dart';

class DetailsModel extends DetailsEntity with EquatableMixin {
  DetailsModel(
      {required super.abilities,
      required super.baseExperience,
      required super.forms,
      required super.height,
      required super.id,
      required super.moves,
      required super.name,
      required super.order,
      required super.species,
      required super.types,
      required super.weight});

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
