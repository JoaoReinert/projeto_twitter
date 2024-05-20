import 'package:flutter/material.dart';
import 'package:projeto_final/controllers/login_page_controllers.dart';
import 'package:projeto_final/pages/page_home/page_home.dart';
import 'package:projeto_final/pages/page_login/page_login.dart';
import 'package:projeto_final/theme.dart';
import 'package:provider/provider.dart';

// class AppWidget extends StatelessWidget {
//   const AppWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter',
//       theme: tema,
//       home: LoginPage(),
//     );
// }
// }

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UserState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: tema,
        home: const LoginPage(),
      ),
    );
  }
}
