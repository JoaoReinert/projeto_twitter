import 'package:flutter/material.dart';
import 'package:projeto_final/controllers/login_page_controllers.dart';
import 'package:projeto_final/pages/page_login/utils/botao_cadastrar.dart';
import 'package:projeto_final/pages/page_login/utils/botao_entrar.dart';
import 'package:projeto_final/pages/page_login/utils/botao_avancar.dart';
import 'package:projeto_final/pages/page_login/utils/field_confirme_senha.dart';
import 'package:projeto_final/pages/page_login/utils/field_email.dart';
import 'package:projeto_final/pages/page_login/utils/field_nome.dart';
import 'package:projeto_final/pages/page_login/utils/field_senha.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool cadastro = false;
  bool entrar = false;

  void funcaoBotaoEntrar() {
    setState(() {
      cadastro = false;
      entrar = true;
    });
  }

  void funcaoBotaoCadastrar() {
    setState(() {
      cadastro = true;
      entrar = false;
    });
  }

  // bool verSenha = true;

  // Widget visualizarSenha() {
  //   return IconButton(
  //     onPressed: () {
  //       setState(() {
  //         verSenha = !verSenha;
  //       });
  //     },
  //     icon: verSenha
  //         ? const Icon(Icons.visibility)
  //         : const Icon(Icons.visibility_off),
  //     color: const Color.fromARGB(255, 255, 255, 255),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<UserState>(context);

    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      body: Form(
        key: _formKey,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Image.asset(
                    "assets/logo.png",
                    color: Colors.white,
                    height: 100,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Twitter",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 50, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (cadastro == true || entrar == true)
                    Column(
                      children: [
                        if (cadastro == true) const FildNome(),
                        const SizedBox(
                          height: 8,
                        ),
                        if (cadastro == true || entrar == true) const FieldEmail(),
                        const SizedBox(
                          height: 8,
                        ),
                        if (cadastro == true || entrar == true) const FieldSenha(),
                        const SizedBox(
                          height: 8,
                        ),
                        if (cadastro == true) const FieldConfirmeSenha(),
                      ],
                    ),
                  const SizedBox(
                    height: 30,
                  ),
                  if (cadastro == true || entrar == true)
                    BotaoAvancar(
                      onpressed: () async {
                        if (_formKey.currentState!.validate()) {
                          await state.insert();
                        }
                      },
                    ),
                  if (entrar == true || cadastro == false)
                    BotaoCadastrar(
                      onpressed: () {
                        funcaoBotaoCadastrar();
                      },
                    ),
                  const SizedBox(
                    height: 3,
                  ),
                  if (cadastro == true || entrar == false)
                    BotaoEntrar(
                      onpressed: () {
                        funcaoBotaoEntrar();
                      },
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
