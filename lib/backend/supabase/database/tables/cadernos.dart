import '../database.dart';

class CadernosTable extends SupabaseTable<CadernosRow> {
  @override
  String get tableName => 'cadernos';

  @override
  CadernosRow createRow(Map<String, dynamic> data) => CadernosRow(data);
}

class CadernosRow extends SupabaseDataRow {
  CadernosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CadernosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get nomecaderno => getField<String>('nomecaderno')!;
  set nomecaderno(String value) => setField<String>('nomecaderno', value);

  String get imagem => getField<String>('imagem')!;
  set imagem(String value) => setField<String>('imagem', value);

  bool get ativo => getField<bool>('ativo')!;
  set ativo(bool value) => setField<bool>('ativo', value);

  String get descricao => getField<String>('descricao')!;
  set descricao(String value) => setField<String>('descricao', value);
}
