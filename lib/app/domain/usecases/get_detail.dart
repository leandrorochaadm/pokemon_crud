import '../enties/enties.dart';

abstract class GetDetail {
  Future<DetailEntity> call();
}
