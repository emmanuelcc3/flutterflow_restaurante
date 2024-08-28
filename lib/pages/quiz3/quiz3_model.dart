import '/flutter_flow/flutter_flow_util.dart';
import 'quiz3_widget.dart' show Quiz3Widget;
import 'package:flutter/material.dart';

class Quiz3Model extends FlutterFlowModel<Quiz3Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Textresena widget.
  FocusNode? textresenaFocusNode;
  TextEditingController? textresenaTextController;
  String? Function(BuildContext, String?)? textresenaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textresenaFocusNode?.dispose();
    textresenaTextController?.dispose();
  }
}
