import 'package:flutter/material.dart';
import 'package:pokemon/app/core/factories/pages/make_detail_page.dart';

import 'core/factories/pages/make_pokemons_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      initialRoute: '/home',
      routes: {
        '/home': (context) => MakePokemonsPage(),
        '/detail': (context) => MakeDetailPage(),
      },
    );
  }
}
