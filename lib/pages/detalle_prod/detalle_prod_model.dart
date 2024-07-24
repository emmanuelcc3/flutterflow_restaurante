import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detalle_prod_widget.dart' show DetalleProdWidget;
import 'package:flutter/material.dart';

class DetalleProdModel extends FlutterFlowModel<DetalleProdWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CountController widget.
  int? countControllerValue;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ListaProductoRecord? productoreado;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ListaProductoRecord? productoCreado;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
