import 'package:flutter/material.dart';
import 'package:projeto_final/controllers/database.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(TabelaUser.nome),
      ),
    );
  }
}
