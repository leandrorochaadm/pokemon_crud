import 'package:equatable/equatable.dart';

import 'enties.dart';

class TypesEntity extends Equatable {
  final int slot;
  final TypeEntity type;

  const TypesEntity({
    required this.slot,
    required this.type,
  });

  @override
  List<Object?> get props => [slot, type];
}
