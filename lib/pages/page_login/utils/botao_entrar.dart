import 'package:flutter/material.dart';

class BotaoEntrar extends StatelessWidget {
  const BotaoEntrar({super.key, required this.onpressed});

  final void Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          fixedSize: const Size(300, 10), backgroundColor: Colors.white),
      onPressed: onpressed,
      child: const Text(
        'Entrar',
        style: TextStyle(color: Colors.black, fontSize: 18),
      ),
    );
  }
}
