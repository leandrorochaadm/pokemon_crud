import '../enties/enties.dart';

abstract class GetDetail {
  Future<DetailEntity> call({required String pokemonId});
}
