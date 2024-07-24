import '/flutter_flow/flutter_flow_util.dart';
import 'detallede_orden_widget.dart' show DetalledeOrdenWidget;
import 'package:flutter/material.dart';

class DetalledeOrdenModel extends FlutterFlowModel<DetalledeOrdenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
