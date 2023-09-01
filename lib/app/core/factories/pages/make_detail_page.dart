import 'package:dio/dio.dart';

import '../../../data/usecases/pokeapi/pokeapi.dart';
import '../../../presentation/value_notifier_detail_presenter.dart';
import '../../../ui/pages/details/detail_page.dart';

MakeDetailPage({required String pokemonId}) => DetailPage(
      pokemonId: pokemonId,
      presenter: ValueNotifierDetailPresenter(
        getDetail: PokeapiGetDetail(
          baseUrl: 'https://pokeapi.co/api/v2',
          dio: Dio(),
        ),
      ),
    );
