import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';

String extrairTextoLimpo(String html) {
  // 1. Remover todas as tags HTML
  // Ex: <p>Olá</p> -> Olá
  // Ex: <br/> -> ""
  String textoSemTags = html.replaceAll(RegExp(r'<[^>]*>'), '');

  // 2. Remover entidades HTML (ex: &nbsp;, &amp;, &#x20;)
  // Ex: Olá&nbsp;Mundo -> Olá Mundo
  String textoSemEntidades = textoSemTags.replaceAll(RegExp(r'&[^;]+;'), '');

  // 3. Substituir múltiplos espaços, quebras de linha e tabulações por um único espaço
  // e depois trim para remover espaços no início/fim
  String textoFinal = textoSemEntidades
      .replaceAll(RegExp(r'\s+'),
          ' ') // Substitui qualquer sequência de espaços/quebras por um único espaço
      .trim(); // Remove espaços extras no início e no fim

  return textoFinal;
}
