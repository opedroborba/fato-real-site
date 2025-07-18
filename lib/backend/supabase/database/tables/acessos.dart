import '../database.dart';

class AcessosTable extends SupabaseTable<AcessosRow> {
  @override
  String get tableName => 'acessos';

  @override
  AcessosRow createRow(Map<String, dynamic> data) => AcessosRow(data);
}

class AcessosRow extends SupabaseDataRow {
  AcessosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AcessosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get latlong => getField<String>('latlong')!;
  set latlong(String value) => setField<String>('latlong', value);
}
