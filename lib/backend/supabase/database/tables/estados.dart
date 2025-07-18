import '../database.dart';

class EstadosTable extends SupabaseTable<EstadosRow> {
  @override
  String get tableName => 'estados';

  @override
  EstadosRow createRow(Map<String, dynamic> data) => EstadosRow(data);
}

class EstadosRow extends SupabaseDataRow {
  EstadosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EstadosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get uf => getField<String>('uf')!;
  set uf(String value) => setField<String>('uf', value);
}
