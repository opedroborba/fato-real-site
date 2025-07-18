import '/backend/supabase/supabase.dart';
import '/componentes/menu/menu_widget.dart';
import '/components/menu_cadernos_superior_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'caderno_widget.dart' show CadernoWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CadernoModel extends FlutterFlowModel<CadernoWidget> {
  ///  Local state fields for this page.

  int categoria = -1;

  List<int> categorias = [];
  void addToCategorias(int item) => categorias.add(item);
  void removeFromCategorias(int item) => categorias.remove(item);
  void removeAtIndexFromCategorias(int index) => categorias.removeAt(index);
  void insertAtIndexInCategorias(int index, int item) =>
      categorias.insert(index, item);
  void updateCategoriasAtIndex(int index, Function(int) updateFn) =>
      categorias[index] = updateFn(categorias[index]);

  ///  State fields for stateful widgets in this page.

  // Models for menuCadernosSuperior dynamic component.
  late FlutterFlowDynamicModels<MenuCadernosSuperiorModel>
      menuCadernosSuperiorModels;
  // Model for menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    menuCadernosSuperiorModels =
        FlutterFlowDynamicModels(() => MenuCadernosSuperiorModel());
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    menuCadernosSuperiorModels.dispose();
    menuModel.dispose();
  }
}
