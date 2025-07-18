import '../database.dart';

class CidadesTable extends SupabaseTable<CidadesRow> {
  @override
  String get tableName => 'cidades';

  @override
  CidadesRow createRow(Map<String, dynamic> data) => CidadesRow(data);
}

class CidadesRow extends SupabaseDataRow {
  CidadesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CidadesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get uf => getField<int>('uf')!;
  set uf(int value) => setField<int>('uf', value);

  String get cidade => getField<String>('cidade')!;
  set cidade(String value) => setField<String>('cidade', value);
}
