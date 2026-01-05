import 'package:flutter/material.dart';

class PaginaEntrada extends StatelessWidget {
  const PaginaEntrada({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Princesa Rafaela'),
      ),
      body: const Center(
        child: Text(
          'Olá, Flutter!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
