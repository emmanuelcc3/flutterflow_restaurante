import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'validar_model.dart';
export 'validar_model.dart';

class ValidarWidget extends StatefulWidget {
  const ValidarWidget({super.key});

  @override
  State<ValidarWidget> createState() => _ValidarWidgetState();
}

class _ValidarWidgetState extends State<ValidarWidget> {
  late ValidarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ValidarModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (loggedIn) {
        context.pushNamed('ListaProducto');

        if (valueOrDefault<bool>(currentUserDocument?.primerInicio, false)) {
          context.pushNamed('CompletarPerfil');
        } else {
          context.pushNamed('ListaProducto');
        }
      } else {
        context.pushNamed('Login');
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primary,
        body: const SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [],
          ),
        ),
      ),
    );
  }
}
