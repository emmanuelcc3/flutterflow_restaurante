import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_producto_widget.dart' show AdminProductoWidget;
import 'package:flutter/material.dart';

class AdminProductoModel extends FlutterFlowModel<AdminProductoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<ProductoRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
