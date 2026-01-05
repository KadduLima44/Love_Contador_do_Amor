import 'package:flutter/material.dart';
import 'paginas/pagina_entrada.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Love - Contador do Amor',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.purple,
      ),
      home: const PaginaEntrada(),
    );
  }
}
