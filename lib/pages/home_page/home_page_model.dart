import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  bool bucar = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TFbusca widget.
  FocusNode? tFbuscaFocusNode;
  TextEditingController? tFbuscaTextController;
  String? Function(BuildContext, String?)? tFbuscaTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in TFbusca widget.
  List<NoticiasRow>? buscaNoticias;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tFbuscaFocusNode?.dispose();
    tFbuscaTextController?.dispose();
  }
}
