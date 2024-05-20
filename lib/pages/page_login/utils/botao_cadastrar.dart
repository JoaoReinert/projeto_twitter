import 'package:flutter/material.dart';

class BotaoCadastrar extends StatelessWidget {
  const BotaoCadastrar({super.key, required this.onpressed});

  final void Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(300, 10),
        backgroundColor: Colors.blue,
        // backgroundColor: (cadastro)? Colors.blue : Colors.white,
        side: const BorderSide(
          width: 1.6,
          color: Colors.black,
          strokeAlign: BorderSide.strokeAlignCenter,
        ),
      ),
      onPressed: onpressed,
      child: const Text(
        'Cadastre-se',
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
