import 'package:flutter/material.dart';
import 'package:projeto_final/controllers/login_page_controllers.dart';
import 'package:projeto_final/theme.dart';
import 'package:provider/provider.dart';

class FildNome extends StatelessWidget {
  const FildNome({super.key});

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<UserState>(context);

    return TextFormField(
      controller: state.controllerNome,
      keyboardType: TextInputType.name,
      textCapitalization: TextCapitalization.words,
      style: const TextStyle(fontSize: 15, color: Colors.white),
      decoration: decorationForm(
        "Nome",
        const Icon(
          Icons.person,
          color: Colors.white,
        ),
        const Icon(Icons.data_array, color: Colors.blue,),
      ),
      validator: (String? value) {
        if (value != null && value.isEmpty) {
          return 'Digite seu nome';
        }
        return null;
      },
    );
  }
}
