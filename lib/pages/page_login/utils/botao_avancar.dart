import 'package:flutter/material.dart';

class BotaoAvancar extends StatelessWidget {
  const BotaoAvancar({super.key, required this.onpressed});

  final void Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          fixedSize: const Size(300, 10), backgroundColor: const Color.fromARGB(255, 0, 0, 0)),
      onPressed: onpressed,
      child: const Text(
        'Avançar',
        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 18),
      ),
    );
  }
}
