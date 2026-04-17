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

class $ProductDataTable extends ProductData
    with TableInfo<$ProductDataTable, ProductDto> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductDataTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _imageDataMeta = const VerificationMeta(
    'imageData',
  );
  @override
  late final GeneratedColumn<Uint8List> imageData = GeneratedColumn<Uint8List>(
    'image_data',
    aliasedName,
    true,
    type: DriftSqlType.blob,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
    defaultValue: Constant(false),
  );
  static const VerificationMeta _qrDataMeta = const VerificationMeta('qrData');
  @override
  late final GeneratedColumn<String> qrData = GeneratedColumn<String>(
    'qr_data',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, imageData, isActive, qrData];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'product_data';
  @override
  VerificationContext validateIntegrity(
    Insertable<ProductDto> instance, {
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
    if (data.containsKey('image_data')) {
      context.handle(
        _imageDataMeta,
        imageData.isAcceptableOrUnknown(data['image_data']!, _imageDataMeta),
      );
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    if (data.containsKey('qr_data')) {
      context.handle(
        _qrDataMeta,
        qrData.isAcceptableOrUnknown(data['qr_data']!, _qrDataMeta),
      );
    } else if (isInserting) {
      context.missing(_qrDataMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductDto map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductDto(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      imageData: attachedDatabase.typeMapping.read(
        DriftSqlType.blob,
        data['${effectivePrefix}image_data'],
      ),
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      qrData: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}qr_data'],
      )!,
    );
  }

  @override
  $ProductDataTable createAlias(String alias) {
    return $ProductDataTable(attachedDatabase, alias);
  }
}

class ProductDto extends DataClass implements Insertable<ProductDto> {
  final int id;
  final String name;
  final Uint8List? imageData;
  final bool isActive;
  final String qrData;
  const ProductDto({
    required this.id,
    required this.name,
    this.imageData,
    required this.isActive,
    required this.qrData,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || imageData != null) {
      map['image_data'] = Variable<Uint8List>(imageData);
    }
    map['is_active'] = Variable<bool>(isActive);
    map['qr_data'] = Variable<String>(qrData);
    return map;
  }

  ProductDataCompanion toCompanion(bool nullToAbsent) {
    return ProductDataCompanion(
      id: Value(id),
      name: Value(name),
      imageData: imageData == null && nullToAbsent
          ? const Value.absent()
          : Value(imageData),
      isActive: Value(isActive),
      qrData: Value(qrData),
    );
  }

  factory ProductDto.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductDto(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      imageData: serializer.fromJson<Uint8List?>(json['imageData']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      qrData: serializer.fromJson<String>(json['qrData']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'imageData': serializer.toJson<Uint8List?>(imageData),
      'isActive': serializer.toJson<bool>(isActive),
      'qrData': serializer.toJson<String>(qrData),
    };
  }

  ProductDto copyWith({
    int? id,
    String? name,
    Value<Uint8List?> imageData = const Value.absent(),
    bool? isActive,
    String? qrData,
  }) => ProductDto(
    id: id ?? this.id,
    name: name ?? this.name,
    imageData: imageData.present ? imageData.value : this.imageData,
    isActive: isActive ?? this.isActive,
    qrData: qrData ?? this.qrData,
  );
  ProductDto copyWithCompanion(ProductDataCompanion data) {
    return ProductDto(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      imageData: data.imageData.present ? data.imageData.value : this.imageData,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      qrData: data.qrData.present ? data.qrData.value : this.qrData,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProductDto(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('imageData: $imageData, ')
          ..write('isActive: $isActive, ')
          ..write('qrData: $qrData')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    $driftBlobEquality.hash(imageData),
    isActive,
    qrData,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductDto &&
          other.id == this.id &&
          other.name == this.name &&
          $driftBlobEquality.equals(other.imageData, this.imageData) &&
          other.isActive == this.isActive &&
          other.qrData == this.qrData);
}

class ProductDataCompanion extends UpdateCompanion<ProductDto> {
  final Value<int> id;
  final Value<String> name;
  final Value<Uint8List?> imageData;
  final Value<bool> isActive;
  final Value<String> qrData;
  const ProductDataCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.imageData = const Value.absent(),
    this.isActive = const Value.absent(),
    this.qrData = const Value.absent(),
  });
  ProductDataCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.imageData = const Value.absent(),
    this.isActive = const Value.absent(),
    required String qrData,
  }) : name = Value(name),
       qrData = Value(qrData);
  static Insertable<ProductDto> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<Uint8List>? imageData,
    Expression<bool>? isActive,
    Expression<String>? qrData,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (imageData != null) 'image_data': imageData,
      if (isActive != null) 'is_active': isActive,
      if (qrData != null) 'qr_data': qrData,
    });
  }

  ProductDataCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<Uint8List?>? imageData,
    Value<bool>? isActive,
    Value<String>? qrData,
  }) {
    return ProductDataCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      imageData: imageData ?? this.imageData,
      isActive: isActive ?? this.isActive,
      qrData: qrData ?? this.qrData,
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
    if (imageData.present) {
      map['image_data'] = Variable<Uint8List>(imageData.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (qrData.present) {
      map['qr_data'] = Variable<String>(qrData.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductDataCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('imageData: $imageData, ')
          ..write('isActive: $isActive, ')
          ..write('qrData: $qrData')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  $DatabaseManager get managers => $DatabaseManager(this);
  late final $UserDtoTable userDto = $UserDtoTable(this);
  late final $ProductDataTable productData = $ProductDataTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [userDto, productData];
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
typedef $$ProductDataTableCreateCompanionBuilder =
    ProductDataCompanion Function({
      Value<int> id,
      required String name,
      Value<Uint8List?> imageData,
      Value<bool> isActive,
      required String qrData,
    });
typedef $$ProductDataTableUpdateCompanionBuilder =
    ProductDataCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<Uint8List?> imageData,
      Value<bool> isActive,
      Value<String> qrData,
    });

class $$ProductDataTableFilterComposer
    extends Composer<_$Database, $ProductDataTable> {
  $$ProductDataTableFilterComposer({
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

  ColumnFilters<Uint8List> get imageData => $composableBuilder(
    column: $table.imageData,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get qrData => $composableBuilder(
    column: $table.qrData,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ProductDataTableOrderingComposer
    extends Composer<_$Database, $ProductDataTable> {
  $$ProductDataTableOrderingComposer({
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

  ColumnOrderings<Uint8List> get imageData => $composableBuilder(
    column: $table.imageData,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get qrData => $composableBuilder(
    column: $table.qrData,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ProductDataTableAnnotationComposer
    extends Composer<_$Database, $ProductDataTable> {
  $$ProductDataTableAnnotationComposer({
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

  GeneratedColumn<Uint8List> get imageData =>
      $composableBuilder(column: $table.imageData, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<String> get qrData =>
      $composableBuilder(column: $table.qrData, builder: (column) => column);
}

class $$ProductDataTableTableManager
    extends
        RootTableManager<
          _$Database,
          $ProductDataTable,
          ProductDto,
          $$ProductDataTableFilterComposer,
          $$ProductDataTableOrderingComposer,
          $$ProductDataTableAnnotationComposer,
          $$ProductDataTableCreateCompanionBuilder,
          $$ProductDataTableUpdateCompanionBuilder,
          (
            ProductDto,
            BaseReferences<_$Database, $ProductDataTable, ProductDto>,
          ),
          ProductDto,
          PrefetchHooks Function()
        > {
  $$ProductDataTableTableManager(_$Database db, $ProductDataTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductDataTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductDataTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProductDataTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<Uint8List?> imageData = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<String> qrData = const Value.absent(),
              }) => ProductDataCompanion(
                id: id,
                name: name,
                imageData: imageData,
                isActive: isActive,
                qrData: qrData,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                Value<Uint8List?> imageData = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                required String qrData,
              }) => ProductDataCompanion.insert(
                id: id,
                name: name,
                imageData: imageData,
                isActive: isActive,
                qrData: qrData,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ProductDataTableProcessedTableManager =
    ProcessedTableManager<
      _$Database,
      $ProductDataTable,
      ProductDto,
      $$ProductDataTableFilterComposer,
      $$ProductDataTableOrderingComposer,
      $$ProductDataTableAnnotationComposer,
      $$ProductDataTableCreateCompanionBuilder,
      $$ProductDataTableUpdateCompanionBuilder,
      (ProductDto, BaseReferences<_$Database, $ProductDataTable, ProductDto>),
      ProductDto,
      PrefetchHooks Function()
    >;

class $DatabaseManager {
  final _$Database _db;
  $DatabaseManager(this._db);
  $$UserDtoTableTableManager get userDto =>
      $$UserDtoTableTableManager(_db, _db.userDto);
  $$ProductDataTableTableManager get productData =>
      $$ProductDataTableTableManager(_db, _db.productData);
}
