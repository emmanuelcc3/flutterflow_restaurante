import '/flutter_flow/flutter_flow_util.dart';
import 'ordenes_copy_widget.dart' show OrdenesCopyWidget;
import 'package:flutter/material.dart';

class OrdenesCopyModel extends FlutterFlowModel<OrdenesCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
