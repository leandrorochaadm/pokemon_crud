import 'package:flutter/material.dart';
import 'package:pokemon/app/domain/enties/pokemon_entity.dart';
import 'package:pokemon/app/ui/pages/pokemons/pokemons_presenter.dart';

class PokemonsPage extends StatefulWidget {
  final PokemonsPresenter presenter;
  const PokemonsPage({Key? key, required this.presenter}) : super(key: key);

  @override
  State<PokemonsPage> createState() => _PokemonsPageState();
}

class _PokemonsPageState extends State<PokemonsPage> {
  @override
  void initState() {
    // widget.presenter.init();
    widget.presenter.loadPokemons();
    super.initState();
  }

  @override
  void dispose() {
    // widget.presenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemons'),
        centerTitle: true,
      ),
      body: ValueListenableBuilder<List<PokemonEntity>>(
          valueListenable: widget.presenter.pokemons,
          builder: (_, pokemons, __) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: pokemons.length,
              itemBuilder: (context, index) {
                final pokemon = pokemons[index];
                return ListTile(
                  title: Text(
                    "Nome: ${pokemon.name}",
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Número: ${pokemon.number}",
                    style: const TextStyle(color: Colors.black),
                  ),
                  trailing: const Icon(Icons.add),
                );
              },
            );
          }),
    );
  }
}
