import 'package:flutter/material.dart';
import '/backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _tipoUsuario = prefs.getString('ff_tipoUsuario') ?? _tipoUsuario;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _HTMLMessage = '';
  String get HTMLMessage => _HTMLMessage;
  set HTMLMessage(String value) {
    _HTMLMessage = value;
  }

  List<String> _filtros = ['Data', 'Caderno', 'Publicidade'];
  List<String> get filtros => _filtros;
  set filtros(List<String> value) {
    _filtros = value;
  }

  void addToFiltros(String value) {
    filtros.add(value);
  }

  void removeFromFiltros(String value) {
    filtros.remove(value);
  }

  void removeAtIndexFromFiltros(int index) {
    filtros.removeAt(index);
  }

  void updateFiltrosAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    filtros[index] = updateFn(_filtros[index]);
  }

  void insertAtIndexInFiltros(int index, String value) {
    filtros.insert(index, value);
  }

  String _tipoUsuario = '';
  String get tipoUsuario => _tipoUsuario;
  set tipoUsuario(String value) {
    _tipoUsuario = value;
    prefs.setString('ff_tipoUsuario', value);
  }

  String _richTextContent = '';
  String get richTextContent => _richTextContent;
  set richTextContent(String value) {
    _richTextContent = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
