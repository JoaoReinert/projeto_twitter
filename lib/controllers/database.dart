import 'package:projeto_final/models/user_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Future<Database> getDatabase() async {
  final path = join(
    await getDatabasesPath(),
    'user.db',
  );

  return openDatabase(
    path,
    onCreate: (db, version) {
      db.execute(TabelaUser.createTable);
    },
    version: 1,
  );
}

class TabelaUser {
  static const String createTable = '''
    CREATE TABLE $tableNome(
      $id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
      $nome TEXT NOT NULL,
      $email TEXT NOT NULL,
      $senha TEXT NOT NULL
    )
    ''';

  static const String tableNome = 'user';

  static const String id = 'id';

  static const String nome = 'nome';

  static const String email = 'email';

  static const String senha = 'senha';

  static Map<String, dynamic> toMap(UserModel user) {
    final map = <String, dynamic>{};

    map[TabelaUser.id] = user.id;
    map[TabelaUser.nome] = user.nome;
    map[TabelaUser.email] = user.email;
    map[TabelaUser.senha] = user.senha;

    return map;
  }
}

class UserController {
  
  Future<void> insert(UserModel user) async {
    final database = await getDatabase();
    final map = TabelaUser.toMap(user);

    await database.insert(TabelaUser.tableNome, map);

    return;
  }
}
