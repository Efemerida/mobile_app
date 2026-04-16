import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_2/domain/models/user.dart';


part 'database.g.dart';


@DriftDatabase(tables: [
  UserDto,
])
class Database extends _$Database {
    Database(super.e);


  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (m) async {
        await m.createAll();

        // Add a bunch of default items in a batch
        await batch((b) {
          b.insertAll(userDto, [
            UserDtoCompanion.insert(
              name: '1',
              login: '1',
              password: '1',
            ),          ]);
        });
      },
    );
  }
}

@DataClassName('UserData')
abstract class UserDto extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text()();

  TextColumn get login => text()();

  TextColumn get password => text()();
}



final db = Database(NativeDatabase.memory());


//dart run build_runner build --delete-conflicting-outputs