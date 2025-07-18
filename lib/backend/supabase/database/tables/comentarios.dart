import '../database.dart';

class ComentariosTable extends SupabaseTable<ComentariosRow> {
  @override
  String get tableName => 'comentarios';

  @override
  ComentariosRow createRow(Map<String, dynamic> data) => ComentariosRow(data);
}

class ComentariosRow extends SupabaseDataRow {
  ComentariosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ComentariosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get noticiaid => getField<int>('noticiaid')!;
  set noticiaid(int value) => setField<int>('noticiaid', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  String get mensagem => getField<String>('mensagem')!;
  set mensagem(String value) => setField<String>('mensagem', value);
}
