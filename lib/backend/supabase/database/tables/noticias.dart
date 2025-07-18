import '../database.dart';

class NoticiasTable extends SupabaseTable<NoticiasRow> {
  @override
  String get tableName => 'noticias';

  @override
  NoticiasRow createRow(Map<String, dynamic> data) => NoticiasRow(data);
}

class NoticiasRow extends SupabaseDataRow {
  NoticiasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NoticiasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get titulo => getField<String>('titulo')!;
  set titulo(String value) => setField<String>('titulo', value);

  String get subtitulo => getField<String>('subtitulo')!;
  set subtitulo(String value) => setField<String>('subtitulo', value);

  String get conteudo => getField<String>('conteudo')!;
  set conteudo(String value) => setField<String>('conteudo', value);

  String get capa => getField<String>('capa')!;
  set capa(String value) => setField<String>('capa', value);

  List<String> get slug => getListField<String>('slug')!;
  set slug(List<String> value) => setListField<String>('slug', value);

  int get idCaderno => getField<int>('id_caderno')!;
  set idCaderno(int value) => setField<int>('id_caderno', value);

  DateTime get updatedat => getField<DateTime>('updatedat')!;
  set updatedat(DateTime value) => setField<DateTime>('updatedat', value);

  List<String> get likes => getListField<String>('likes');
  set likes(List<String>? value) => setListField<String>('likes', value);

  String get publicidade => getField<String>('publicidade')!;
  set publicidade(String value) => setField<String>('publicidade', value);

  bool get publico => getField<bool>('publico')!;
  set publico(bool value) => setField<bool>('publico', value);

  String get autor => getField<String>('autor')!;
  set autor(String value) => setField<String>('autor', value);
}
