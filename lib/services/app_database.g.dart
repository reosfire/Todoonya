// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $TaskEntriesTable extends TaskEntries
    with TableInfo<$TaskEntriesTable, TaskEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TaskEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dataMeta = const VerificationMeta('data');
  @override
  late final GeneratedColumn<Uint8List> data = GeneratedColumn<Uint8List>(
    'data',
    aliasedName,
    false,
    type: DriftSqlType.blob,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, data];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tasks';
  @override
  VerificationContext validateIntegrity(
    Insertable<TaskEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('data')) {
      context.handle(
        _dataMeta,
        this.data.isAcceptableOrUnknown(data['data']!, _dataMeta),
      );
    } else if (isInserting) {
      context.missing(_dataMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TaskEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TaskEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      data: attachedDatabase.typeMapping.read(
        DriftSqlType.blob,
        data['${effectivePrefix}data'],
      )!,
    );
  }

  @override
  $TaskEntriesTable createAlias(String alias) {
    return $TaskEntriesTable(attachedDatabase, alias);
  }
}

class TaskEntry extends DataClass implements Insertable<TaskEntry> {
  final String id;
  final Uint8List data;
  const TaskEntry({required this.id, required this.data});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['data'] = Variable<Uint8List>(data);
    return map;
  }

  TaskEntriesCompanion toCompanion(bool nullToAbsent) {
    return TaskEntriesCompanion(id: Value(id), data: Value(data));
  }

  factory TaskEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TaskEntry(
      id: serializer.fromJson<String>(json['id']),
      data: serializer.fromJson<Uint8List>(json['data']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'data': serializer.toJson<Uint8List>(data),
    };
  }

  TaskEntry copyWith({String? id, Uint8List? data}) =>
      TaskEntry(id: id ?? this.id, data: data ?? this.data);
  TaskEntry copyWithCompanion(TaskEntriesCompanion data) {
    return TaskEntry(
      id: data.id.present ? data.id.value : this.id,
      data: data.data.present ? data.data.value : this.data,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TaskEntry(')
          ..write('id: $id, ')
          ..write('data: $data')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, $driftBlobEquality.hash(data));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TaskEntry &&
          other.id == this.id &&
          $driftBlobEquality.equals(other.data, this.data));
}

class TaskEntriesCompanion extends UpdateCompanion<TaskEntry> {
  final Value<String> id;
  final Value<Uint8List> data;
  final Value<int> rowid;
  const TaskEntriesCompanion({
    this.id = const Value.absent(),
    this.data = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TaskEntriesCompanion.insert({
    required String id,
    required Uint8List data,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       data = Value(data);
  static Insertable<TaskEntry> custom({
    Expression<String>? id,
    Expression<Uint8List>? data,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (data != null) 'data': data,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TaskEntriesCompanion copyWith({
    Value<String>? id,
    Value<Uint8List>? data,
    Value<int>? rowid,
  }) {
    return TaskEntriesCompanion(
      id: id ?? this.id,
      data: data ?? this.data,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (data.present) {
      map['data'] = Variable<Uint8List>(data.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TaskEntriesCompanion(')
          ..write('id: $id, ')
          ..write('data: $data, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ListEntriesTable extends ListEntries
    with TableInfo<$ListEntriesTable, ListEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ListEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dataMeta = const VerificationMeta('data');
  @override
  late final GeneratedColumn<Uint8List> data = GeneratedColumn<Uint8List>(
    'data',
    aliasedName,
    false,
    type: DriftSqlType.blob,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, data];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'lists';
  @override
  VerificationContext validateIntegrity(
    Insertable<ListEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('data')) {
      context.handle(
        _dataMeta,
        this.data.isAcceptableOrUnknown(data['data']!, _dataMeta),
      );
    } else if (isInserting) {
      context.missing(_dataMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ListEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ListEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      data: attachedDatabase.typeMapping.read(
        DriftSqlType.blob,
        data['${effectivePrefix}data'],
      )!,
    );
  }

  @override
  $ListEntriesTable createAlias(String alias) {
    return $ListEntriesTable(attachedDatabase, alias);
  }
}

class ListEntry extends DataClass implements Insertable<ListEntry> {
  final String id;
  final Uint8List data;
  const ListEntry({required this.id, required this.data});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['data'] = Variable<Uint8List>(data);
    return map;
  }

  ListEntriesCompanion toCompanion(bool nullToAbsent) {
    return ListEntriesCompanion(id: Value(id), data: Value(data));
  }

  factory ListEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ListEntry(
      id: serializer.fromJson<String>(json['id']),
      data: serializer.fromJson<Uint8List>(json['data']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'data': serializer.toJson<Uint8List>(data),
    };
  }

  ListEntry copyWith({String? id, Uint8List? data}) =>
      ListEntry(id: id ?? this.id, data: data ?? this.data);
  ListEntry copyWithCompanion(ListEntriesCompanion data) {
    return ListEntry(
      id: data.id.present ? data.id.value : this.id,
      data: data.data.present ? data.data.value : this.data,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ListEntry(')
          ..write('id: $id, ')
          ..write('data: $data')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, $driftBlobEquality.hash(data));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ListEntry &&
          other.id == this.id &&
          $driftBlobEquality.equals(other.data, this.data));
}

class ListEntriesCompanion extends UpdateCompanion<ListEntry> {
  final Value<String> id;
  final Value<Uint8List> data;
  final Value<int> rowid;
  const ListEntriesCompanion({
    this.id = const Value.absent(),
    this.data = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ListEntriesCompanion.insert({
    required String id,
    required Uint8List data,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       data = Value(data);
  static Insertable<ListEntry> custom({
    Expression<String>? id,
    Expression<Uint8List>? data,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (data != null) 'data': data,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ListEntriesCompanion copyWith({
    Value<String>? id,
    Value<Uint8List>? data,
    Value<int>? rowid,
  }) {
    return ListEntriesCompanion(
      id: id ?? this.id,
      data: data ?? this.data,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (data.present) {
      map['data'] = Variable<Uint8List>(data.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ListEntriesCompanion(')
          ..write('id: $id, ')
          ..write('data: $data, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FolderEntriesTable extends FolderEntries
    with TableInfo<$FolderEntriesTable, FolderEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FolderEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dataMeta = const VerificationMeta('data');
  @override
  late final GeneratedColumn<Uint8List> data = GeneratedColumn<Uint8List>(
    'data',
    aliasedName,
    false,
    type: DriftSqlType.blob,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, data];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'folders';
  @override
  VerificationContext validateIntegrity(
    Insertable<FolderEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('data')) {
      context.handle(
        _dataMeta,
        this.data.isAcceptableOrUnknown(data['data']!, _dataMeta),
      );
    } else if (isInserting) {
      context.missing(_dataMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FolderEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FolderEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      data: attachedDatabase.typeMapping.read(
        DriftSqlType.blob,
        data['${effectivePrefix}data'],
      )!,
    );
  }

  @override
  $FolderEntriesTable createAlias(String alias) {
    return $FolderEntriesTable(attachedDatabase, alias);
  }
}

class FolderEntry extends DataClass implements Insertable<FolderEntry> {
  final String id;
  final Uint8List data;
  const FolderEntry({required this.id, required this.data});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['data'] = Variable<Uint8List>(data);
    return map;
  }

  FolderEntriesCompanion toCompanion(bool nullToAbsent) {
    return FolderEntriesCompanion(id: Value(id), data: Value(data));
  }

  factory FolderEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FolderEntry(
      id: serializer.fromJson<String>(json['id']),
      data: serializer.fromJson<Uint8List>(json['data']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'data': serializer.toJson<Uint8List>(data),
    };
  }

  FolderEntry copyWith({String? id, Uint8List? data}) =>
      FolderEntry(id: id ?? this.id, data: data ?? this.data);
  FolderEntry copyWithCompanion(FolderEntriesCompanion data) {
    return FolderEntry(
      id: data.id.present ? data.id.value : this.id,
      data: data.data.present ? data.data.value : this.data,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FolderEntry(')
          ..write('id: $id, ')
          ..write('data: $data')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, $driftBlobEquality.hash(data));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FolderEntry &&
          other.id == this.id &&
          $driftBlobEquality.equals(other.data, this.data));
}

class FolderEntriesCompanion extends UpdateCompanion<FolderEntry> {
  final Value<String> id;
  final Value<Uint8List> data;
  final Value<int> rowid;
  const FolderEntriesCompanion({
    this.id = const Value.absent(),
    this.data = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FolderEntriesCompanion.insert({
    required String id,
    required Uint8List data,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       data = Value(data);
  static Insertable<FolderEntry> custom({
    Expression<String>? id,
    Expression<Uint8List>? data,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (data != null) 'data': data,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FolderEntriesCompanion copyWith({
    Value<String>? id,
    Value<Uint8List>? data,
    Value<int>? rowid,
  }) {
    return FolderEntriesCompanion(
      id: id ?? this.id,
      data: data ?? this.data,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (data.present) {
      map['data'] = Variable<Uint8List>(data.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FolderEntriesCompanion(')
          ..write('id: $id, ')
          ..write('data: $data, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TagEntriesTable extends TagEntries
    with TableInfo<$TagEntriesTable, TagEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TagEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dataMeta = const VerificationMeta('data');
  @override
  late final GeneratedColumn<Uint8List> data = GeneratedColumn<Uint8List>(
    'data',
    aliasedName,
    false,
    type: DriftSqlType.blob,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, data];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tags';
  @override
  VerificationContext validateIntegrity(
    Insertable<TagEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('data')) {
      context.handle(
        _dataMeta,
        this.data.isAcceptableOrUnknown(data['data']!, _dataMeta),
      );
    } else if (isInserting) {
      context.missing(_dataMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TagEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TagEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      data: attachedDatabase.typeMapping.read(
        DriftSqlType.blob,
        data['${effectivePrefix}data'],
      )!,
    );
  }

  @override
  $TagEntriesTable createAlias(String alias) {
    return $TagEntriesTable(attachedDatabase, alias);
  }
}

class TagEntry extends DataClass implements Insertable<TagEntry> {
  final String id;
  final Uint8List data;
  const TagEntry({required this.id, required this.data});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['data'] = Variable<Uint8List>(data);
    return map;
  }

  TagEntriesCompanion toCompanion(bool nullToAbsent) {
    return TagEntriesCompanion(id: Value(id), data: Value(data));
  }

  factory TagEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TagEntry(
      id: serializer.fromJson<String>(json['id']),
      data: serializer.fromJson<Uint8List>(json['data']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'data': serializer.toJson<Uint8List>(data),
    };
  }

  TagEntry copyWith({String? id, Uint8List? data}) =>
      TagEntry(id: id ?? this.id, data: data ?? this.data);
  TagEntry copyWithCompanion(TagEntriesCompanion data) {
    return TagEntry(
      id: data.id.present ? data.id.value : this.id,
      data: data.data.present ? data.data.value : this.data,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TagEntry(')
          ..write('id: $id, ')
          ..write('data: $data')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, $driftBlobEquality.hash(data));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TagEntry &&
          other.id == this.id &&
          $driftBlobEquality.equals(other.data, this.data));
}

class TagEntriesCompanion extends UpdateCompanion<TagEntry> {
  final Value<String> id;
  final Value<Uint8List> data;
  final Value<int> rowid;
  const TagEntriesCompanion({
    this.id = const Value.absent(),
    this.data = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TagEntriesCompanion.insert({
    required String id,
    required Uint8List data,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       data = Value(data);
  static Insertable<TagEntry> custom({
    Expression<String>? id,
    Expression<Uint8List>? data,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (data != null) 'data': data,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TagEntriesCompanion copyWith({
    Value<String>? id,
    Value<Uint8List>? data,
    Value<int>? rowid,
  }) {
    return TagEntriesCompanion(
      id: id ?? this.id,
      data: data ?? this.data,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (data.present) {
      map['data'] = Variable<Uint8List>(data.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TagEntriesCompanion(')
          ..write('id: $id, ')
          ..write('data: $data, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SmartListEntriesTable extends SmartListEntries
    with TableInfo<$SmartListEntriesTable, SmartListEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SmartListEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dataMeta = const VerificationMeta('data');
  @override
  late final GeneratedColumn<Uint8List> data = GeneratedColumn<Uint8List>(
    'data',
    aliasedName,
    false,
    type: DriftSqlType.blob,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, data];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'smart_lists';
  @override
  VerificationContext validateIntegrity(
    Insertable<SmartListEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('data')) {
      context.handle(
        _dataMeta,
        this.data.isAcceptableOrUnknown(data['data']!, _dataMeta),
      );
    } else if (isInserting) {
      context.missing(_dataMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SmartListEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SmartListEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      data: attachedDatabase.typeMapping.read(
        DriftSqlType.blob,
        data['${effectivePrefix}data'],
      )!,
    );
  }

  @override
  $SmartListEntriesTable createAlias(String alias) {
    return $SmartListEntriesTable(attachedDatabase, alias);
  }
}

class SmartListEntry extends DataClass implements Insertable<SmartListEntry> {
  final String id;
  final Uint8List data;
  const SmartListEntry({required this.id, required this.data});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['data'] = Variable<Uint8List>(data);
    return map;
  }

  SmartListEntriesCompanion toCompanion(bool nullToAbsent) {
    return SmartListEntriesCompanion(id: Value(id), data: Value(data));
  }

  factory SmartListEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SmartListEntry(
      id: serializer.fromJson<String>(json['id']),
      data: serializer.fromJson<Uint8List>(json['data']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'data': serializer.toJson<Uint8List>(data),
    };
  }

  SmartListEntry copyWith({String? id, Uint8List? data}) =>
      SmartListEntry(id: id ?? this.id, data: data ?? this.data);
  SmartListEntry copyWithCompanion(SmartListEntriesCompanion data) {
    return SmartListEntry(
      id: data.id.present ? data.id.value : this.id,
      data: data.data.present ? data.data.value : this.data,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SmartListEntry(')
          ..write('id: $id, ')
          ..write('data: $data')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, $driftBlobEquality.hash(data));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SmartListEntry &&
          other.id == this.id &&
          $driftBlobEquality.equals(other.data, this.data));
}

class SmartListEntriesCompanion extends UpdateCompanion<SmartListEntry> {
  final Value<String> id;
  final Value<Uint8List> data;
  final Value<int> rowid;
  const SmartListEntriesCompanion({
    this.id = const Value.absent(),
    this.data = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SmartListEntriesCompanion.insert({
    required String id,
    required Uint8List data,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       data = Value(data);
  static Insertable<SmartListEntry> custom({
    Expression<String>? id,
    Expression<Uint8List>? data,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (data != null) 'data': data,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SmartListEntriesCompanion copyWith({
    Value<String>? id,
    Value<Uint8List>? data,
    Value<int>? rowid,
  }) {
    return SmartListEntriesCompanion(
      id: id ?? this.id,
      data: data ?? this.data,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (data.present) {
      map['data'] = Variable<Uint8List>(data.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SmartListEntriesCompanion(')
          ..write('id: $id, ')
          ..write('data: $data, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MetadataEntriesTable extends MetadataEntries
    with TableInfo<$MetadataEntriesTable, MetadataEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MetadataEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
    'key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [key, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'metadata';
  @override
  VerificationContext validateIntegrity(
    Insertable<MetadataEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
        _keyMeta,
        key.isAcceptableOrUnknown(data['key']!, _keyMeta),
      );
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  MetadataEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MetadataEntry(
      key: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}value'],
      )!,
    );
  }

  @override
  $MetadataEntriesTable createAlias(String alias) {
    return $MetadataEntriesTable(attachedDatabase, alias);
  }
}

class MetadataEntry extends DataClass implements Insertable<MetadataEntry> {
  final String key;
  final String value;
  const MetadataEntry({required this.key, required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['value'] = Variable<String>(value);
    return map;
  }

  MetadataEntriesCompanion toCompanion(bool nullToAbsent) {
    return MetadataEntriesCompanion(key: Value(key), value: Value(value));
  }

  factory MetadataEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MetadataEntry(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String>(value),
    };
  }

  MetadataEntry copyWith({String? key, String? value}) =>
      MetadataEntry(key: key ?? this.key, value: value ?? this.value);
  MetadataEntry copyWithCompanion(MetadataEntriesCompanion data) {
    return MetadataEntry(
      key: data.key.present ? data.key.value : this.key,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MetadataEntry(')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MetadataEntry &&
          other.key == this.key &&
          other.value == this.value);
}

class MetadataEntriesCompanion extends UpdateCompanion<MetadataEntry> {
  final Value<String> key;
  final Value<String> value;
  final Value<int> rowid;
  const MetadataEntriesCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MetadataEntriesCompanion.insert({
    required String key,
    required String value,
    this.rowid = const Value.absent(),
  }) : key = Value(key),
       value = Value(value);
  static Insertable<MetadataEntry> custom({
    Expression<String>? key,
    Expression<String>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MetadataEntriesCompanion copyWith({
    Value<String>? key,
    Value<String>? value,
    Value<int>? rowid,
  }) {
    return MetadataEntriesCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MetadataEntriesCompanion(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SyncEntityEntriesTable extends SyncEntityEntries
    with TableInfo<$SyncEntityEntriesTable, SyncEntityEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SyncEntityEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
    'key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _tsMeta = const VerificationMeta('ts');
  @override
  late final GeneratedColumn<String> ts = GeneratedColumn<String>(
    'ts',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [key, ts];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sync_entities';
  @override
  VerificationContext validateIntegrity(
    Insertable<SyncEntityEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
        _keyMeta,
        key.isAcceptableOrUnknown(data['key']!, _keyMeta),
      );
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('ts')) {
      context.handle(_tsMeta, ts.isAcceptableOrUnknown(data['ts']!, _tsMeta));
    } else if (isInserting) {
      context.missing(_tsMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  SyncEntityEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SyncEntityEntry(
      key: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key'],
      )!,
      ts: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ts'],
      )!,
    );
  }

  @override
  $SyncEntityEntriesTable createAlias(String alias) {
    return $SyncEntityEntriesTable(attachedDatabase, alias);
  }
}

class SyncEntityEntry extends DataClass implements Insertable<SyncEntityEntry> {
  final String key;
  final String ts;
  const SyncEntityEntry({required this.key, required this.ts});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['ts'] = Variable<String>(ts);
    return map;
  }

  SyncEntityEntriesCompanion toCompanion(bool nullToAbsent) {
    return SyncEntityEntriesCompanion(key: Value(key), ts: Value(ts));
  }

  factory SyncEntityEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SyncEntityEntry(
      key: serializer.fromJson<String>(json['key']),
      ts: serializer.fromJson<String>(json['ts']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'ts': serializer.toJson<String>(ts),
    };
  }

  SyncEntityEntry copyWith({String? key, String? ts}) =>
      SyncEntityEntry(key: key ?? this.key, ts: ts ?? this.ts);
  SyncEntityEntry copyWithCompanion(SyncEntityEntriesCompanion data) {
    return SyncEntityEntry(
      key: data.key.present ? data.key.value : this.key,
      ts: data.ts.present ? data.ts.value : this.ts,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SyncEntityEntry(')
          ..write('key: $key, ')
          ..write('ts: $ts')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, ts);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SyncEntityEntry &&
          other.key == this.key &&
          other.ts == this.ts);
}

class SyncEntityEntriesCompanion extends UpdateCompanion<SyncEntityEntry> {
  final Value<String> key;
  final Value<String> ts;
  final Value<int> rowid;
  const SyncEntityEntriesCompanion({
    this.key = const Value.absent(),
    this.ts = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SyncEntityEntriesCompanion.insert({
    required String key,
    required String ts,
    this.rowid = const Value.absent(),
  }) : key = Value(key),
       ts = Value(ts);
  static Insertable<SyncEntityEntry> custom({
    Expression<String>? key,
    Expression<String>? ts,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (ts != null) 'ts': ts,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SyncEntityEntriesCompanion copyWith({
    Value<String>? key,
    Value<String>? ts,
    Value<int>? rowid,
  }) {
    return SyncEntityEntriesCompanion(
      key: key ?? this.key,
      ts: ts ?? this.ts,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (ts.present) {
      map['ts'] = Variable<String>(ts.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncEntityEntriesCompanion(')
          ..write('key: $key, ')
          ..write('ts: $ts, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SyncDeletionEntriesTable extends SyncDeletionEntries
    with TableInfo<$SyncDeletionEntriesTable, SyncDeletionEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SyncDeletionEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
    'key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _tsMeta = const VerificationMeta('ts');
  @override
  late final GeneratedColumn<String> ts = GeneratedColumn<String>(
    'ts',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [key, ts];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sync_deletions';
  @override
  VerificationContext validateIntegrity(
    Insertable<SyncDeletionEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
        _keyMeta,
        key.isAcceptableOrUnknown(data['key']!, _keyMeta),
      );
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('ts')) {
      context.handle(_tsMeta, ts.isAcceptableOrUnknown(data['ts']!, _tsMeta));
    } else if (isInserting) {
      context.missing(_tsMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  SyncDeletionEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SyncDeletionEntry(
      key: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key'],
      )!,
      ts: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ts'],
      )!,
    );
  }

  @override
  $SyncDeletionEntriesTable createAlias(String alias) {
    return $SyncDeletionEntriesTable(attachedDatabase, alias);
  }
}

class SyncDeletionEntry extends DataClass
    implements Insertable<SyncDeletionEntry> {
  final String key;
  final String ts;
  const SyncDeletionEntry({required this.key, required this.ts});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['ts'] = Variable<String>(ts);
    return map;
  }

  SyncDeletionEntriesCompanion toCompanion(bool nullToAbsent) {
    return SyncDeletionEntriesCompanion(key: Value(key), ts: Value(ts));
  }

  factory SyncDeletionEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SyncDeletionEntry(
      key: serializer.fromJson<String>(json['key']),
      ts: serializer.fromJson<String>(json['ts']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'ts': serializer.toJson<String>(ts),
    };
  }

  SyncDeletionEntry copyWith({String? key, String? ts}) =>
      SyncDeletionEntry(key: key ?? this.key, ts: ts ?? this.ts);
  SyncDeletionEntry copyWithCompanion(SyncDeletionEntriesCompanion data) {
    return SyncDeletionEntry(
      key: data.key.present ? data.key.value : this.key,
      ts: data.ts.present ? data.ts.value : this.ts,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SyncDeletionEntry(')
          ..write('key: $key, ')
          ..write('ts: $ts')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, ts);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SyncDeletionEntry &&
          other.key == this.key &&
          other.ts == this.ts);
}

class SyncDeletionEntriesCompanion extends UpdateCompanion<SyncDeletionEntry> {
  final Value<String> key;
  final Value<String> ts;
  final Value<int> rowid;
  const SyncDeletionEntriesCompanion({
    this.key = const Value.absent(),
    this.ts = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SyncDeletionEntriesCompanion.insert({
    required String key,
    required String ts,
    this.rowid = const Value.absent(),
  }) : key = Value(key),
       ts = Value(ts);
  static Insertable<SyncDeletionEntry> custom({
    Expression<String>? key,
    Expression<String>? ts,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (ts != null) 'ts': ts,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SyncDeletionEntriesCompanion copyWith({
    Value<String>? key,
    Value<String>? ts,
    Value<int>? rowid,
  }) {
    return SyncDeletionEntriesCompanion(
      key: key ?? this.key,
      ts: ts ?? this.ts,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (ts.present) {
      map['ts'] = Variable<String>(ts.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncDeletionEntriesCompanion(')
          ..write('key: $key, ')
          ..write('ts: $ts, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UiStateEntriesTable extends UiStateEntries
    with TableInfo<$UiStateEntriesTable, UiStateEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UiStateEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
    'key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [key, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'ui_state';
  @override
  VerificationContext validateIntegrity(
    Insertable<UiStateEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
        _keyMeta,
        key.isAcceptableOrUnknown(data['key']!, _keyMeta),
      );
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  UiStateEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UiStateEntry(
      key: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}value'],
      )!,
    );
  }

  @override
  $UiStateEntriesTable createAlias(String alias) {
    return $UiStateEntriesTable(attachedDatabase, alias);
  }
}

class UiStateEntry extends DataClass implements Insertable<UiStateEntry> {
  final String key;
  final String value;
  const UiStateEntry({required this.key, required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['value'] = Variable<String>(value);
    return map;
  }

  UiStateEntriesCompanion toCompanion(bool nullToAbsent) {
    return UiStateEntriesCompanion(key: Value(key), value: Value(value));
  }

  factory UiStateEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UiStateEntry(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String>(value),
    };
  }

  UiStateEntry copyWith({String? key, String? value}) =>
      UiStateEntry(key: key ?? this.key, value: value ?? this.value);
  UiStateEntry copyWithCompanion(UiStateEntriesCompanion data) {
    return UiStateEntry(
      key: data.key.present ? data.key.value : this.key,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UiStateEntry(')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UiStateEntry &&
          other.key == this.key &&
          other.value == this.value);
}

class UiStateEntriesCompanion extends UpdateCompanion<UiStateEntry> {
  final Value<String> key;
  final Value<String> value;
  final Value<int> rowid;
  const UiStateEntriesCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UiStateEntriesCompanion.insert({
    required String key,
    required String value,
    this.rowid = const Value.absent(),
  }) : key = Value(key),
       value = Value(value);
  static Insertable<UiStateEntry> custom({
    Expression<String>? key,
    Expression<String>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UiStateEntriesCompanion copyWith({
    Value<String>? key,
    Value<String>? value,
    Value<int>? rowid,
  }) {
    return UiStateEntriesCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UiStateEntriesCompanion(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $TaskEntriesTable taskEntries = $TaskEntriesTable(this);
  late final $ListEntriesTable listEntries = $ListEntriesTable(this);
  late final $FolderEntriesTable folderEntries = $FolderEntriesTable(this);
  late final $TagEntriesTable tagEntries = $TagEntriesTable(this);
  late final $SmartListEntriesTable smartListEntries = $SmartListEntriesTable(
    this,
  );
  late final $MetadataEntriesTable metadataEntries = $MetadataEntriesTable(
    this,
  );
  late final $SyncEntityEntriesTable syncEntityEntries =
      $SyncEntityEntriesTable(this);
  late final $SyncDeletionEntriesTable syncDeletionEntries =
      $SyncDeletionEntriesTable(this);
  late final $UiStateEntriesTable uiStateEntries = $UiStateEntriesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    taskEntries,
    listEntries,
    folderEntries,
    tagEntries,
    smartListEntries,
    metadataEntries,
    syncEntityEntries,
    syncDeletionEntries,
    uiStateEntries,
  ];
}

typedef $$TaskEntriesTableCreateCompanionBuilder =
    TaskEntriesCompanion Function({
      required String id,
      required Uint8List data,
      Value<int> rowid,
    });
typedef $$TaskEntriesTableUpdateCompanionBuilder =
    TaskEntriesCompanion Function({
      Value<String> id,
      Value<Uint8List> data,
      Value<int> rowid,
    });

class $$TaskEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $TaskEntriesTable> {
  $$TaskEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<Uint8List> get data => $composableBuilder(
    column: $table.data,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TaskEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $TaskEntriesTable> {
  $$TaskEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<Uint8List> get data => $composableBuilder(
    column: $table.data,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TaskEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $TaskEntriesTable> {
  $$TaskEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<Uint8List> get data =>
      $composableBuilder(column: $table.data, builder: (column) => column);
}

class $$TaskEntriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TaskEntriesTable,
          TaskEntry,
          $$TaskEntriesTableFilterComposer,
          $$TaskEntriesTableOrderingComposer,
          $$TaskEntriesTableAnnotationComposer,
          $$TaskEntriesTableCreateCompanionBuilder,
          $$TaskEntriesTableUpdateCompanionBuilder,
          (
            TaskEntry,
            BaseReferences<_$AppDatabase, $TaskEntriesTable, TaskEntry>,
          ),
          TaskEntry,
          PrefetchHooks Function()
        > {
  $$TaskEntriesTableTableManager(_$AppDatabase db, $TaskEntriesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TaskEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TaskEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TaskEntriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<Uint8List> data = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TaskEntriesCompanion(id: id, data: data, rowid: rowid),
          createCompanionCallback:
              ({
                required String id,
                required Uint8List data,
                Value<int> rowid = const Value.absent(),
              }) =>
                  TaskEntriesCompanion.insert(id: id, data: data, rowid: rowid),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TaskEntriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TaskEntriesTable,
      TaskEntry,
      $$TaskEntriesTableFilterComposer,
      $$TaskEntriesTableOrderingComposer,
      $$TaskEntriesTableAnnotationComposer,
      $$TaskEntriesTableCreateCompanionBuilder,
      $$TaskEntriesTableUpdateCompanionBuilder,
      (TaskEntry, BaseReferences<_$AppDatabase, $TaskEntriesTable, TaskEntry>),
      TaskEntry,
      PrefetchHooks Function()
    >;
typedef $$ListEntriesTableCreateCompanionBuilder =
    ListEntriesCompanion Function({
      required String id,
      required Uint8List data,
      Value<int> rowid,
    });
typedef $$ListEntriesTableUpdateCompanionBuilder =
    ListEntriesCompanion Function({
      Value<String> id,
      Value<Uint8List> data,
      Value<int> rowid,
    });

class $$ListEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $ListEntriesTable> {
  $$ListEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<Uint8List> get data => $composableBuilder(
    column: $table.data,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ListEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $ListEntriesTable> {
  $$ListEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<Uint8List> get data => $composableBuilder(
    column: $table.data,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ListEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ListEntriesTable> {
  $$ListEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<Uint8List> get data =>
      $composableBuilder(column: $table.data, builder: (column) => column);
}

class $$ListEntriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ListEntriesTable,
          ListEntry,
          $$ListEntriesTableFilterComposer,
          $$ListEntriesTableOrderingComposer,
          $$ListEntriesTableAnnotationComposer,
          $$ListEntriesTableCreateCompanionBuilder,
          $$ListEntriesTableUpdateCompanionBuilder,
          (
            ListEntry,
            BaseReferences<_$AppDatabase, $ListEntriesTable, ListEntry>,
          ),
          ListEntry,
          PrefetchHooks Function()
        > {
  $$ListEntriesTableTableManager(_$AppDatabase db, $ListEntriesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ListEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ListEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ListEntriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<Uint8List> data = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ListEntriesCompanion(id: id, data: data, rowid: rowid),
          createCompanionCallback:
              ({
                required String id,
                required Uint8List data,
                Value<int> rowid = const Value.absent(),
              }) =>
                  ListEntriesCompanion.insert(id: id, data: data, rowid: rowid),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ListEntriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ListEntriesTable,
      ListEntry,
      $$ListEntriesTableFilterComposer,
      $$ListEntriesTableOrderingComposer,
      $$ListEntriesTableAnnotationComposer,
      $$ListEntriesTableCreateCompanionBuilder,
      $$ListEntriesTableUpdateCompanionBuilder,
      (ListEntry, BaseReferences<_$AppDatabase, $ListEntriesTable, ListEntry>),
      ListEntry,
      PrefetchHooks Function()
    >;
typedef $$FolderEntriesTableCreateCompanionBuilder =
    FolderEntriesCompanion Function({
      required String id,
      required Uint8List data,
      Value<int> rowid,
    });
typedef $$FolderEntriesTableUpdateCompanionBuilder =
    FolderEntriesCompanion Function({
      Value<String> id,
      Value<Uint8List> data,
      Value<int> rowid,
    });

class $$FolderEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $FolderEntriesTable> {
  $$FolderEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<Uint8List> get data => $composableBuilder(
    column: $table.data,
    builder: (column) => ColumnFilters(column),
  );
}

class $$FolderEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $FolderEntriesTable> {
  $$FolderEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<Uint8List> get data => $composableBuilder(
    column: $table.data,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FolderEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $FolderEntriesTable> {
  $$FolderEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<Uint8List> get data =>
      $composableBuilder(column: $table.data, builder: (column) => column);
}

class $$FolderEntriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FolderEntriesTable,
          FolderEntry,
          $$FolderEntriesTableFilterComposer,
          $$FolderEntriesTableOrderingComposer,
          $$FolderEntriesTableAnnotationComposer,
          $$FolderEntriesTableCreateCompanionBuilder,
          $$FolderEntriesTableUpdateCompanionBuilder,
          (
            FolderEntry,
            BaseReferences<_$AppDatabase, $FolderEntriesTable, FolderEntry>,
          ),
          FolderEntry,
          PrefetchHooks Function()
        > {
  $$FolderEntriesTableTableManager(_$AppDatabase db, $FolderEntriesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FolderEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FolderEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FolderEntriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<Uint8List> data = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FolderEntriesCompanion(id: id, data: data, rowid: rowid),
          createCompanionCallback:
              ({
                required String id,
                required Uint8List data,
                Value<int> rowid = const Value.absent(),
              }) => FolderEntriesCompanion.insert(
                id: id,
                data: data,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$FolderEntriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FolderEntriesTable,
      FolderEntry,
      $$FolderEntriesTableFilterComposer,
      $$FolderEntriesTableOrderingComposer,
      $$FolderEntriesTableAnnotationComposer,
      $$FolderEntriesTableCreateCompanionBuilder,
      $$FolderEntriesTableUpdateCompanionBuilder,
      (
        FolderEntry,
        BaseReferences<_$AppDatabase, $FolderEntriesTable, FolderEntry>,
      ),
      FolderEntry,
      PrefetchHooks Function()
    >;
typedef $$TagEntriesTableCreateCompanionBuilder =
    TagEntriesCompanion Function({
      required String id,
      required Uint8List data,
      Value<int> rowid,
    });
typedef $$TagEntriesTableUpdateCompanionBuilder =
    TagEntriesCompanion Function({
      Value<String> id,
      Value<Uint8List> data,
      Value<int> rowid,
    });

class $$TagEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $TagEntriesTable> {
  $$TagEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<Uint8List> get data => $composableBuilder(
    column: $table.data,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TagEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $TagEntriesTable> {
  $$TagEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<Uint8List> get data => $composableBuilder(
    column: $table.data,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TagEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $TagEntriesTable> {
  $$TagEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<Uint8List> get data =>
      $composableBuilder(column: $table.data, builder: (column) => column);
}

class $$TagEntriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TagEntriesTable,
          TagEntry,
          $$TagEntriesTableFilterComposer,
          $$TagEntriesTableOrderingComposer,
          $$TagEntriesTableAnnotationComposer,
          $$TagEntriesTableCreateCompanionBuilder,
          $$TagEntriesTableUpdateCompanionBuilder,
          (TagEntry, BaseReferences<_$AppDatabase, $TagEntriesTable, TagEntry>),
          TagEntry,
          PrefetchHooks Function()
        > {
  $$TagEntriesTableTableManager(_$AppDatabase db, $TagEntriesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TagEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TagEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TagEntriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<Uint8List> data = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TagEntriesCompanion(id: id, data: data, rowid: rowid),
          createCompanionCallback:
              ({
                required String id,
                required Uint8List data,
                Value<int> rowid = const Value.absent(),
              }) =>
                  TagEntriesCompanion.insert(id: id, data: data, rowid: rowid),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TagEntriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TagEntriesTable,
      TagEntry,
      $$TagEntriesTableFilterComposer,
      $$TagEntriesTableOrderingComposer,
      $$TagEntriesTableAnnotationComposer,
      $$TagEntriesTableCreateCompanionBuilder,
      $$TagEntriesTableUpdateCompanionBuilder,
      (TagEntry, BaseReferences<_$AppDatabase, $TagEntriesTable, TagEntry>),
      TagEntry,
      PrefetchHooks Function()
    >;
typedef $$SmartListEntriesTableCreateCompanionBuilder =
    SmartListEntriesCompanion Function({
      required String id,
      required Uint8List data,
      Value<int> rowid,
    });
typedef $$SmartListEntriesTableUpdateCompanionBuilder =
    SmartListEntriesCompanion Function({
      Value<String> id,
      Value<Uint8List> data,
      Value<int> rowid,
    });

class $$SmartListEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $SmartListEntriesTable> {
  $$SmartListEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<Uint8List> get data => $composableBuilder(
    column: $table.data,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SmartListEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $SmartListEntriesTable> {
  $$SmartListEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<Uint8List> get data => $composableBuilder(
    column: $table.data,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SmartListEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $SmartListEntriesTable> {
  $$SmartListEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<Uint8List> get data =>
      $composableBuilder(column: $table.data, builder: (column) => column);
}

class $$SmartListEntriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SmartListEntriesTable,
          SmartListEntry,
          $$SmartListEntriesTableFilterComposer,
          $$SmartListEntriesTableOrderingComposer,
          $$SmartListEntriesTableAnnotationComposer,
          $$SmartListEntriesTableCreateCompanionBuilder,
          $$SmartListEntriesTableUpdateCompanionBuilder,
          (
            SmartListEntry,
            BaseReferences<
              _$AppDatabase,
              $SmartListEntriesTable,
              SmartListEntry
            >,
          ),
          SmartListEntry,
          PrefetchHooks Function()
        > {
  $$SmartListEntriesTableTableManager(
    _$AppDatabase db,
    $SmartListEntriesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SmartListEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SmartListEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SmartListEntriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<Uint8List> data = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SmartListEntriesCompanion(id: id, data: data, rowid: rowid),
          createCompanionCallback:
              ({
                required String id,
                required Uint8List data,
                Value<int> rowid = const Value.absent(),
              }) => SmartListEntriesCompanion.insert(
                id: id,
                data: data,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SmartListEntriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SmartListEntriesTable,
      SmartListEntry,
      $$SmartListEntriesTableFilterComposer,
      $$SmartListEntriesTableOrderingComposer,
      $$SmartListEntriesTableAnnotationComposer,
      $$SmartListEntriesTableCreateCompanionBuilder,
      $$SmartListEntriesTableUpdateCompanionBuilder,
      (
        SmartListEntry,
        BaseReferences<_$AppDatabase, $SmartListEntriesTable, SmartListEntry>,
      ),
      SmartListEntry,
      PrefetchHooks Function()
    >;
typedef $$MetadataEntriesTableCreateCompanionBuilder =
    MetadataEntriesCompanion Function({
      required String key,
      required String value,
      Value<int> rowid,
    });
typedef $$MetadataEntriesTableUpdateCompanionBuilder =
    MetadataEntriesCompanion Function({
      Value<String> key,
      Value<String> value,
      Value<int> rowid,
    });

class $$MetadataEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $MetadataEntriesTable> {
  $$MetadataEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );
}

class $$MetadataEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $MetadataEntriesTable> {
  $$MetadataEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MetadataEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $MetadataEntriesTable> {
  $$MetadataEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);
}

class $$MetadataEntriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MetadataEntriesTable,
          MetadataEntry,
          $$MetadataEntriesTableFilterComposer,
          $$MetadataEntriesTableOrderingComposer,
          $$MetadataEntriesTableAnnotationComposer,
          $$MetadataEntriesTableCreateCompanionBuilder,
          $$MetadataEntriesTableUpdateCompanionBuilder,
          (
            MetadataEntry,
            BaseReferences<_$AppDatabase, $MetadataEntriesTable, MetadataEntry>,
          ),
          MetadataEntry,
          PrefetchHooks Function()
        > {
  $$MetadataEntriesTableTableManager(
    _$AppDatabase db,
    $MetadataEntriesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MetadataEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MetadataEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MetadataEntriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> key = const Value.absent(),
                Value<String> value = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MetadataEntriesCompanion(
                key: key,
                value: value,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String key,
                required String value,
                Value<int> rowid = const Value.absent(),
              }) => MetadataEntriesCompanion.insert(
                key: key,
                value: value,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$MetadataEntriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MetadataEntriesTable,
      MetadataEntry,
      $$MetadataEntriesTableFilterComposer,
      $$MetadataEntriesTableOrderingComposer,
      $$MetadataEntriesTableAnnotationComposer,
      $$MetadataEntriesTableCreateCompanionBuilder,
      $$MetadataEntriesTableUpdateCompanionBuilder,
      (
        MetadataEntry,
        BaseReferences<_$AppDatabase, $MetadataEntriesTable, MetadataEntry>,
      ),
      MetadataEntry,
      PrefetchHooks Function()
    >;
typedef $$SyncEntityEntriesTableCreateCompanionBuilder =
    SyncEntityEntriesCompanion Function({
      required String key,
      required String ts,
      Value<int> rowid,
    });
typedef $$SyncEntityEntriesTableUpdateCompanionBuilder =
    SyncEntityEntriesCompanion Function({
      Value<String> key,
      Value<String> ts,
      Value<int> rowid,
    });

class $$SyncEntityEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $SyncEntityEntriesTable> {
  $$SyncEntityEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get ts => $composableBuilder(
    column: $table.ts,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SyncEntityEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $SyncEntityEntriesTable> {
  $$SyncEntityEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get ts => $composableBuilder(
    column: $table.ts,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SyncEntityEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $SyncEntityEntriesTable> {
  $$SyncEntityEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get ts =>
      $composableBuilder(column: $table.ts, builder: (column) => column);
}

class $$SyncEntityEntriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SyncEntityEntriesTable,
          SyncEntityEntry,
          $$SyncEntityEntriesTableFilterComposer,
          $$SyncEntityEntriesTableOrderingComposer,
          $$SyncEntityEntriesTableAnnotationComposer,
          $$SyncEntityEntriesTableCreateCompanionBuilder,
          $$SyncEntityEntriesTableUpdateCompanionBuilder,
          (
            SyncEntityEntry,
            BaseReferences<
              _$AppDatabase,
              $SyncEntityEntriesTable,
              SyncEntityEntry
            >,
          ),
          SyncEntityEntry,
          PrefetchHooks Function()
        > {
  $$SyncEntityEntriesTableTableManager(
    _$AppDatabase db,
    $SyncEntityEntriesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SyncEntityEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SyncEntityEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SyncEntityEntriesTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> key = const Value.absent(),
                Value<String> ts = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SyncEntityEntriesCompanion(key: key, ts: ts, rowid: rowid),
          createCompanionCallback:
              ({
                required String key,
                required String ts,
                Value<int> rowid = const Value.absent(),
              }) => SyncEntityEntriesCompanion.insert(
                key: key,
                ts: ts,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SyncEntityEntriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SyncEntityEntriesTable,
      SyncEntityEntry,
      $$SyncEntityEntriesTableFilterComposer,
      $$SyncEntityEntriesTableOrderingComposer,
      $$SyncEntityEntriesTableAnnotationComposer,
      $$SyncEntityEntriesTableCreateCompanionBuilder,
      $$SyncEntityEntriesTableUpdateCompanionBuilder,
      (
        SyncEntityEntry,
        BaseReferences<_$AppDatabase, $SyncEntityEntriesTable, SyncEntityEntry>,
      ),
      SyncEntityEntry,
      PrefetchHooks Function()
    >;
typedef $$SyncDeletionEntriesTableCreateCompanionBuilder =
    SyncDeletionEntriesCompanion Function({
      required String key,
      required String ts,
      Value<int> rowid,
    });
typedef $$SyncDeletionEntriesTableUpdateCompanionBuilder =
    SyncDeletionEntriesCompanion Function({
      Value<String> key,
      Value<String> ts,
      Value<int> rowid,
    });

class $$SyncDeletionEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $SyncDeletionEntriesTable> {
  $$SyncDeletionEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get ts => $composableBuilder(
    column: $table.ts,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SyncDeletionEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $SyncDeletionEntriesTable> {
  $$SyncDeletionEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get ts => $composableBuilder(
    column: $table.ts,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SyncDeletionEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $SyncDeletionEntriesTable> {
  $$SyncDeletionEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get ts =>
      $composableBuilder(column: $table.ts, builder: (column) => column);
}

class $$SyncDeletionEntriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SyncDeletionEntriesTable,
          SyncDeletionEntry,
          $$SyncDeletionEntriesTableFilterComposer,
          $$SyncDeletionEntriesTableOrderingComposer,
          $$SyncDeletionEntriesTableAnnotationComposer,
          $$SyncDeletionEntriesTableCreateCompanionBuilder,
          $$SyncDeletionEntriesTableUpdateCompanionBuilder,
          (
            SyncDeletionEntry,
            BaseReferences<
              _$AppDatabase,
              $SyncDeletionEntriesTable,
              SyncDeletionEntry
            >,
          ),
          SyncDeletionEntry,
          PrefetchHooks Function()
        > {
  $$SyncDeletionEntriesTableTableManager(
    _$AppDatabase db,
    $SyncDeletionEntriesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SyncDeletionEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SyncDeletionEntriesTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$SyncDeletionEntriesTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> key = const Value.absent(),
                Value<String> ts = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) =>
                  SyncDeletionEntriesCompanion(key: key, ts: ts, rowid: rowid),
          createCompanionCallback:
              ({
                required String key,
                required String ts,
                Value<int> rowid = const Value.absent(),
              }) => SyncDeletionEntriesCompanion.insert(
                key: key,
                ts: ts,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SyncDeletionEntriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SyncDeletionEntriesTable,
      SyncDeletionEntry,
      $$SyncDeletionEntriesTableFilterComposer,
      $$SyncDeletionEntriesTableOrderingComposer,
      $$SyncDeletionEntriesTableAnnotationComposer,
      $$SyncDeletionEntriesTableCreateCompanionBuilder,
      $$SyncDeletionEntriesTableUpdateCompanionBuilder,
      (
        SyncDeletionEntry,
        BaseReferences<
          _$AppDatabase,
          $SyncDeletionEntriesTable,
          SyncDeletionEntry
        >,
      ),
      SyncDeletionEntry,
      PrefetchHooks Function()
    >;
typedef $$UiStateEntriesTableCreateCompanionBuilder =
    UiStateEntriesCompanion Function({
      required String key,
      required String value,
      Value<int> rowid,
    });
typedef $$UiStateEntriesTableUpdateCompanionBuilder =
    UiStateEntriesCompanion Function({
      Value<String> key,
      Value<String> value,
      Value<int> rowid,
    });

class $$UiStateEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $UiStateEntriesTable> {
  $$UiStateEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );
}

class $$UiStateEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $UiStateEntriesTable> {
  $$UiStateEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UiStateEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $UiStateEntriesTable> {
  $$UiStateEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);
}

class $$UiStateEntriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $UiStateEntriesTable,
          UiStateEntry,
          $$UiStateEntriesTableFilterComposer,
          $$UiStateEntriesTableOrderingComposer,
          $$UiStateEntriesTableAnnotationComposer,
          $$UiStateEntriesTableCreateCompanionBuilder,
          $$UiStateEntriesTableUpdateCompanionBuilder,
          (
            UiStateEntry,
            BaseReferences<_$AppDatabase, $UiStateEntriesTable, UiStateEntry>,
          ),
          UiStateEntry,
          PrefetchHooks Function()
        > {
  $$UiStateEntriesTableTableManager(
    _$AppDatabase db,
    $UiStateEntriesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UiStateEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UiStateEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UiStateEntriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> key = const Value.absent(),
                Value<String> value = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) =>
                  UiStateEntriesCompanion(key: key, value: value, rowid: rowid),
          createCompanionCallback:
              ({
                required String key,
                required String value,
                Value<int> rowid = const Value.absent(),
              }) => UiStateEntriesCompanion.insert(
                key: key,
                value: value,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$UiStateEntriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $UiStateEntriesTable,
      UiStateEntry,
      $$UiStateEntriesTableFilterComposer,
      $$UiStateEntriesTableOrderingComposer,
      $$UiStateEntriesTableAnnotationComposer,
      $$UiStateEntriesTableCreateCompanionBuilder,
      $$UiStateEntriesTableUpdateCompanionBuilder,
      (
        UiStateEntry,
        BaseReferences<_$AppDatabase, $UiStateEntriesTable, UiStateEntry>,
      ),
      UiStateEntry,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$TaskEntriesTableTableManager get taskEntries =>
      $$TaskEntriesTableTableManager(_db, _db.taskEntries);
  $$ListEntriesTableTableManager get listEntries =>
      $$ListEntriesTableTableManager(_db, _db.listEntries);
  $$FolderEntriesTableTableManager get folderEntries =>
      $$FolderEntriesTableTableManager(_db, _db.folderEntries);
  $$TagEntriesTableTableManager get tagEntries =>
      $$TagEntriesTableTableManager(_db, _db.tagEntries);
  $$SmartListEntriesTableTableManager get smartListEntries =>
      $$SmartListEntriesTableTableManager(_db, _db.smartListEntries);
  $$MetadataEntriesTableTableManager get metadataEntries =>
      $$MetadataEntriesTableTableManager(_db, _db.metadataEntries);
  $$SyncEntityEntriesTableTableManager get syncEntityEntries =>
      $$SyncEntityEntriesTableTableManager(_db, _db.syncEntityEntries);
  $$SyncDeletionEntriesTableTableManager get syncDeletionEntries =>
      $$SyncDeletionEntriesTableTableManager(_db, _db.syncDeletionEntries);
  $$UiStateEntriesTableTableManager get uiStateEntries =>
      $$UiStateEntriesTableTableManager(_db, _db.uiStateEntries);
}
