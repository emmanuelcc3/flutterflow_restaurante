import '/flutter_flow/flutter_flow_util.dart';
import 'opinion_de_servicio_widget.dart' show OpinionDeServicioWidget;
import 'package:flutter/material.dart';

class OpinionDeServicioModel extends FlutterFlowModel<OpinionDeServicioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
