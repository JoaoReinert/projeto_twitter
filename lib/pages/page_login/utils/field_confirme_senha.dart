import 'package:flutter/material.dart';
import 'package:projeto_final/controllers/login_page_controllers.dart';
import 'package:projeto_final/theme.dart';
import 'package:provider/provider.dart';

class FieldConfirmeSenha extends StatefulWidget {
 const FieldConfirmeSenha({super.key});

  @override
  State<FieldConfirmeSenha> createState() => _FieldConfirmeSenhaState();
}

class _FieldConfirmeSenhaState extends State<FieldConfirmeSenha> {
  bool verSenha = true;
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<UserState>(context);

    return TextFormField(
      obscureText: verSenha,
      keyboardType: TextInputType.visiblePassword,
      style: const TextStyle(fontSize: 15, color: Colors.white),
      decoration: decorationForm(
        "Confirme sua senha",
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
        if (value != null && value.isEmpty) {
          return 'Confirme sua senha';
        } else if (value != state.controllerSenha.text) {
          return 'Sua confirmação deve ser igual a sua senha';
        }
        return null;
      },
    );
  }
}
