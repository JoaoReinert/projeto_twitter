import 'package:flutter/material.dart';
import 'package:projeto_final/controllers/database.dart';
import 'package:projeto_final/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

const nomeKey = 'nomeUser';
const emailKey = 'emailUser';

class UserState extends ChangeNotifier {
  String nome = '';
  
  UserState() {
    init();
  }

  final controller = UserController();

  final _controllerNome = TextEditingController();
  final _controllerEmail = TextEditingController();
  final _controllerSenha = TextEditingController();

  TextEditingController get controllerNome => _controllerNome;
  TextEditingController get controllerEmail => _controllerEmail;
  TextEditingController get controllerSenha => _controllerSenha;

  late final SharedPreferences sharedPreferences;

  Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
     nome = sharedPreferences.getString(nomeKey) ?? '';
     final email = sharedPreferences.getString(emailKey) ?? '';
    controllerNome.text = nome;
    controllerEmail.text = email;
    notifyListeners();
  }

  Future<void> insert() async {
    final user = UserModel(
      nome: controllerNome.text,
      email: controllerEmail.text,
      senha: controllerSenha.text,
    );

    sharedPreferences.setString(nomeKey, controllerNome.text);
    sharedPreferences.setString(emailKey, controllerEmail.text);

    await controller.insert(user);

    notifyListeners();
  }
}
