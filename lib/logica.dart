import 'package:flutter/material.dart';
import 'package:prompt_dialog/prompt_dialog.dart';

void main(List<String> args) {
  runApp(const Logica());
}

class Logica extends StatefulWidget {
  const Logica({super.key});

  @override
  State<Logica> createState() => _LogicaState();
}

class _LogicaState extends State<Logica> {
  String nome = '';
  String frase = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            nome = await prompt(context) ?? '';
            setState(() {
              frase = 'Olá $nome';
            });
          },
          child: const Text('Coloque seu nome'),
        ),
        Text(frase),
      ],
    );
  }
}
