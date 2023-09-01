import 'package:equatable/equatable.dart';

class TypeEntity extends Equatable {
  final String name;
  final String url;

  const TypeEntity({
    required this.name,
    required this.url,
  });

  @override
  List<Object?> get props => [name, url];
}
