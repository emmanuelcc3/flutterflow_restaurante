import '/flutter_flow/flutter_flow_util.dart';
import 'ordenes_widget.dart' show OrdenesWidget;
import 'package:flutter/material.dart';

class OrdenesModel extends FlutterFlowModel<OrdenesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
