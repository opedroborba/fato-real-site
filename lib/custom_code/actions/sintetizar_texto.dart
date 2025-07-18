// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_tts/flutter_tts.dart';

Future sintetizarTexto(String textoparaleitura) async {
  // Cria a instância do TTS
  final FlutterTts flutterTts = FlutterTts();

  // Configurações para fluidez
  await flutterTts.setLanguage("pt-BR");
  await flutterTts.setPitch(1.0);
  await flutterTts.setSpeechRate(1.0);

  // Tenta escolher uma voz mais natural (verifique as disponíveis no seu dispositivo)
  // List<dynamic> voices = await flutterTts.getVoices();
  // await flutterTts.setVoice({"name": "brasil_female", "locale": "pt-BR"});

  await flutterTts.speak(textoparaleitura);
}
