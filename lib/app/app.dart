import 'package:flutter/material.dart';

import 'core/factories/pages/make_pokemons_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: MakePokemonsPage(),
    );
  }
}
