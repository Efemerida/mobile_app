// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $UserDtoTable extends UserDto with TableInfo<$UserDtoTable, UserData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserDtoTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _loginMeta = const VerificationMeta('login');
  @override
  late final GeneratedColumn<String> login = GeneratedColumn<String>(
    'login',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _passwordMeta = const VerificationMeta(
    'password',
  );
  @override
  late final GeneratedColumn<String> password = GeneratedColumn<String>(
    'password',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, login, password];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_dto';
  @override
  VerificationContext validateIntegrity(
    Insertable<UserData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('login')) {
      context.handle(
        _loginMeta,
        login.isAcceptableOrUnknown(data['login']!, _loginMeta),
      );
    } else if (isInserting) {
      context.missing(_loginMeta);
    }
    if (data.containsKey('password')) {
      context.handle(
        _passwordMeta,
        password.isAcceptableOrUnknown(data['password']!, _passwordMeta),
      );
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      login: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}login'],
      )!,
      password: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}password'],
      )!,
    );
  }

  @override
  $UserDtoTable createAlias(String alias) {
    return $UserDtoTable(attachedDatabase, alias);
  }
}

class UserData extends DataClass implements Insertable<UserData> {
  final int id;
  final String name;
  final String login;
  final String password;
  const UserData({
    required this.id,
    required this.name,
    required this.login,
    required this.password,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['login'] = Variable<String>(login);
    map['password'] = Variable<String>(password);
    return map;
  }

  UserDtoCompanion toCompanion(bool nullToAbsent) {
    return UserDtoCompanion(
      id: Value(id),
      name: Value(name),
      login: Value(login),
      password: Value(password),
    );
  }

  factory UserData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      login: serializer.fromJson<String>(json['login']),
      password: serializer.fromJson<String>(json['password']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'login': serializer.toJson<String>(login),
      'password': serializer.toJson<String>(password),
    };
  }

  UserData copyWith({int? id, String? name, String? login, String? password}) =>
      UserData(
        id: id ?? this.id,
        name: name ?? this.name,
        login: login ?? this.login,
        password: password ?? this.password,
      );
  UserData copyWithCompanion(UserDtoCompanion data) {
    return UserData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      login: data.login.present ? data.login.value : this.login,
      password: data.password.present ? data.password.value : this.password,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('login: $login, ')
          ..write('password: $password')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, login, password);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserData &&
          other.id == this.id &&
          other.name == this.name &&
          other.login == this.login &&
          other.password == this.password);
}

class UserDtoCompanion extends UpdateCompanion<UserData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> login;
  final Value<String> password;
  const UserDtoCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.login = const Value.absent(),
    this.password = const Value.absent(),
  });
  UserDtoCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String login,
    required String password,
  }) : name = Value(name),
       login = Value(login),
       password = Value(password);
  static Insertable<UserData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? login,
    Expression<String>? password,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (login != null) 'login': login,
      if (password != null) 'password': password,
    });
  }

  UserDtoCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String>? login,
    Value<String>? password,
  }) {
    return UserDtoCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      login: login ?? this.login,
      password: password ?? this.password,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (login.present) {
      map['login'] = Variable<String>(login.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserDtoCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('login: $login, ')
          ..write('password: $password')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  $DatabaseManager get managers => $DatabaseManager(this);
  late final $UserDtoTable userDto = $UserDtoTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [userDto];
}

typedef $$UserDtoTableCreateCompanionBuilder =
    UserDtoCompanion Function({
      Value<int> id,
      required String name,
      required String login,
      required String password,
    });
typedef $$UserDtoTableUpdateCompanionBuilder =
    UserDtoCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String> login,
      Value<String> password,
    });

class $$UserDtoTableFilterComposer extends Composer<_$Database, $UserDtoTable> {
  $$UserDtoTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get login => $composableBuilder(
    column: $table.login,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get password => $composableBuilder(
    column: $table.password,
    builder: (column) => ColumnFilters(column),
  );
}

class $$UserDtoTableOrderingComposer
    extends Composer<_$Database, $UserDtoTable> {
  $$UserDtoTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get login => $composableBuilder(
    column: $table.login,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get password => $composableBuilder(
    column: $table.password,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UserDtoTableAnnotationComposer
    extends Composer<_$Database, $UserDtoTable> {
  $$UserDtoTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get login =>
      $composableBuilder(column: $table.login, builder: (column) => column);

  GeneratedColumn<String> get password =>
      $composableBuilder(column: $table.password, builder: (column) => column);
}

class $$UserDtoTableTableManager
    extends
        RootTableManager<
          _$Database,
          $UserDtoTable,
          UserData,
          $$UserDtoTableFilterComposer,
          $$UserDtoTableOrderingComposer,
          $$UserDtoTableAnnotationComposer,
          $$UserDtoTableCreateCompanionBuilder,
          $$UserDtoTableUpdateCompanionBuilder,
          (UserData, BaseReferences<_$Database, $UserDtoTable, UserData>),
          UserData,
          PrefetchHooks Function()
        > {
  $$UserDtoTableTableManager(_$Database db, $UserDtoTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserDtoTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserDtoTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserDtoTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> login = const Value.absent(),
                Value<String> password = const Value.absent(),
              }) => UserDtoCompanion(
                id: id,
                name: name,
                login: login,
                password: password,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                required String login,
                required String password,
              }) => UserDtoCompanion.insert(
                id: id,
                name: name,
                login: login,
                password: password,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$UserDtoTableProcessedTableManager =
    ProcessedTableManager<
      _$Database,
      $UserDtoTable,
      UserData,
      $$UserDtoTableFilterComposer,
      $$UserDtoTableOrderingComposer,
      $$UserDtoTableAnnotationComposer,
      $$UserDtoTableCreateCompanionBuilder,
      $$UserDtoTableUpdateCompanionBuilder,
      (UserData, BaseReferences<_$Database, $UserDtoTable, UserData>),
      UserData,
      PrefetchHooks Function()
    >;

class $DatabaseManager {
  final _$Database _db;
  $DatabaseManager(this._db);
  $$UserDtoTableTableManager get userDto =>
      $$UserDtoTableTableManager(_db, _db.userDto);
}
