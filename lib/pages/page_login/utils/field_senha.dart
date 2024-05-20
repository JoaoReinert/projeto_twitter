import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projeto_final/controllers/login_page_controllers.dart';
import 'package:projeto_final/theme.dart';
import 'package:provider/provider.dart';

class FieldSenha extends StatefulWidget {
  const FieldSenha({super.key});

  @override
  State<FieldSenha> createState() => _FieldSenhaState();
}

class _FieldSenhaState extends State<FieldSenha> {
  bool verSenha = true;
  @override
  Widget build(BuildContext context) {
    

    final state = Provider.of<UserState>(context);
    return TextFormField(
      controller: state.controllerSenha,
      obscureText: verSenha,
      keyboardType: TextInputType.visiblePassword,
      style: const TextStyle(fontSize: 15, color: Colors.white),
      decoration: decorationForm(
        "Senha",
        const Icon(
          Icons.password,
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {
            setState(() {
              verSenha = !verSenha;
            });
          },
          icon: verSenha ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      validator: (String? value) {
        if (value == null) {
          return 'Digite sua senha';
        }
        return null;
      },
    );
  }
}
