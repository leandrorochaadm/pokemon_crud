import 'package:dio/dio.dart';

import '../../../domain/enties/enties.dart';
import '../../../domain/usecases/usecases.dart';
import '../../models/models.dart';

class PokeapiGetDetail implements GetDetail {
  final Dio dio;
  final String baseUrl;

  PokeapiGetDetail({required this.dio, required this.baseUrl});

  @override
  Future<DetailEntity> call() async {
    try {
      final res = await dio.get("$baseUrl/pokemon");
      final detail = DetailModel.fromJson(res.data);
      return detail;
    } catch (e) {
      throw Exception("Não foi possível obter os detalhes do Pokemon");
    }
  }
}
