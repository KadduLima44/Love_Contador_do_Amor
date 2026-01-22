import 'package:flutter/material.dart';
import 'package:love_contador_do_amor/paginas/pagina_entrada.dart';
import 'package:love_contador_do_amor/temas.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Love - Contador do Amor',
      theme: ThemeData(
        useMaterial3: true,

        scaffoldBackgroundColor: Colors.transparent,

        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: roxoPrincipal,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: roxoPrincipal),
        ),

        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: roxoPrincipal,
          ),
          bodyLarge: TextStyle(
            fontSize: 20,
            color: textoEscuro,
          ),
          bodyMedium: TextStyle(
            fontSize: 18,
            color: textoEscuro,
          ),
        ),
      ),
      home: const PaginaEntrada(),
    );
  }
}
