import 'package:dio/dio.dart';

import '../../../data/usecases/pokeapi/pokeapi_get_pokemons.dart';
import '../../../presentation/value_notifier_pokemons_presenter.dart';
import '../../../ui/pages/pokemons/pokemons_page.dart';

MakePokemonsPage() => PokemonsPage(
      presenter: ValueNotifierPokemonsPresenter(
        getPokemons: PokeapiGetPokemons(
          baseUrl: 'https://pokeapi.co/api/v2',
          dio: Dio(),
        ),
      ),
    );
