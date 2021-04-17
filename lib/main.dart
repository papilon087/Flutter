import 'package:flutter/material.dart';
import 'package:flutter_application_pokedex/pages/home_page/home_page.dart';
import 'package:flutter_application_pokedex/stores/pokeapi_store.dart';
import 'package:flutter_application_pokedex/stores/pokeapiv2_store.dart';
import 'package:get_it/get_it.dart';

//flutter packages pub run build_runner watch
//
void main() {
  // ignore: unused_local_variable
  GetIt getIt = GetIt.instance;
  getIt..registerSingleton<PokeApiStore>(PokeApiStore());
  getIt..registerSingleton<PokeApiV2Store>(PokeApiV2Store());

  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokedex',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
