import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'detalle_prod_model.dart';
export 'detalle_prod_model.dart';

class DetalleProdWidget extends StatefulWidget {
  const DetalleProdWidget({
    super.key,
    required this.productoPara,
  });

  final ProductoRecord? productoPara;

  @override
  State<DetalleProdWidget> createState() => _DetalleProdWidgetState();
}

class _DetalleProdWidgetState extends State<DetalleProdWidget> {
  late DetalleProdModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetalleProdModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<CarritoRecord>>(
      stream: queryCarritoRecord(
        queryBuilder: (carritoRecord) => carritoRecord.where(Filter.or(
          Filter(
            'Creado',
            isEqualTo: currentUserReference,
          ),
          Filter(
            'Activado',
            isEqualTo: true,
          ),
        )),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<CarritoRecord> detalleProdCarritoRecordList = snapshot.data!;
        final detalleProdCarritoRecord = detalleProdCarritoRecordList.isNotEmpty
            ? detalleProdCarritoRecordList.first
            : null;

        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondary,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.productoPara?.nombre,
                    'Nombre',
                  ),
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                        fontSize: 22.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              actions: const [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          0.0,
                          valueOrDefault<double>(
                            MediaQuery.sizeOf(context).width >= 1270.0
                                ? 24.0
                                : 0.0,
                            0.0,
                          ),
                          0.0,
                          0.0),
                      child: Wrap(
                        spacing: 16.0,
                        runSpacing: 0.0,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 12.0),
                            child: Container(
                              width: double.infinity,
                              constraints: const BoxConstraints(
                                maxWidth: 570.0,
                              ),
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 3.0,
                                    color: Color(0x33000000),
                                    offset: Offset(
                                      0.0,
                                      1.0,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(0.0),
                                      child: Image.network(
                                        widget.productoPara!.imagen,
                                        width: double.infinity,
                                        height: 280.0,
                                        fit: BoxFit.cover,
                                        alignment: const Alignment(2.0, 0.0),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 10.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Descripción',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          Text(
                                            formatNumber(
                                              widget.productoPara!.precio,
                                              formatType: FormatType.decimal,
                                              decimalType:
                                                  DecimalType.automatic,
                                              currency: '',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 12.0, 16.0, 12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            valueOrDefault<String>(
                                              widget.productoPara?.description,
                                              'Description',
                                            ),
                                            maxLines: 6,
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 130.0,
                                                  height: 44.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    shape: BoxShape.rectangle,
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 1.0,
                                                    ),
                                                  ),
                                                  child:
                                                      FlutterFlowCountController(
                                                    decrementIconBuilder:
                                                        (enabled) => FaIcon(
                                                      FontAwesomeIcons.minus,
                                                      color: enabled
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      size: 16.0,
                                                    ),
                                                    incrementIconBuilder:
                                                        (enabled) => FaIcon(
                                                      FontAwesomeIcons.plus,
                                                      color: enabled
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      size: 16.0,
                                                    ),
                                                    countBuilder: (count) =>
                                                        Text(
                                                      count.toString(),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleLarge
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                    count: _model
                                                        .countControllerValue ??= 1,
                                                    updateCount: (count) =>
                                                        setState(() => _model
                                                                .countControllerValue =
                                                            count),
                                                    stepSize: 1,
                                                    minimum: 1,
                                                    contentPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 30.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          4.0, 0.0, 0.0, 4.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        formatNumber(
                                                          functions.subtotalProducto(
                                                              _model
                                                                  .countControllerValue!,
                                                              widget
                                                                  .productoPara!
                                                                  .precio),
                                                          formatType: FormatType
                                                              .decimal,
                                                          decimalType:
                                                              DecimalType
                                                                  .automatic,
                                                          currency: '',
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .headlineMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              fontSize: 20.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                      ),
                                                      Text(
                                                        'Total',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .labelSmall
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              fontSize: 18.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                      ),
                                                    ].divide(
                                                        const SizedBox(height: 4.0)),
                                                  ),
                                                ),
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    if (loggedIn) {
                                                      if (detalleProdCarritoRecord
                                                              ?.activado ==
                                                          true) {
                                                        var listaProductoRecordReference1 =
                                                            ListaProductoRecord
                                                                .collection
                                                                .doc();
                                                        await listaProductoRecordReference1
                                                            .set(
                                                                createListaProductoRecordData(
                                                          producto: widget
                                                              .productoPara
                                                              ?.reference,
                                                          nombre: widget
                                                              .productoPara
                                                              ?.nombre,
                                                          description: widget
                                                              .productoPara
                                                              ?.description,
                                                          imagen: widget
                                                              .productoPara
                                                              ?.imagen,
                                                          precio: widget
                                                              .productoPara
                                                              ?.precio,
                                                          subTotal:
                                                              valueOrDefault<
                                                                  double>(
                                                            functions.subtotalProducto(
                                                                _model
                                                                    .countControllerValue!,
                                                                widget
                                                                    .productoPara!
                                                                    .precio),
                                                            0.0,
                                                          ),
                                                          creador:
                                                              currentUserReference,
                                                          cantidad: _model
                                                              .countControllerValue,
                                                        ));
                                                        _model.productoreado =
                                                            ListaProductoRecord
                                                                .getDocumentFromData(
                                                                    createListaProductoRecordData(
                                                                      producto: widget
                                                                          .productoPara
                                                                          ?.reference,
                                                                      nombre: widget
                                                                          .productoPara
                                                                          ?.nombre,
                                                                      description: widget
                                                                          .productoPara
                                                                          ?.description,
                                                                      imagen: widget
                                                                          .productoPara
                                                                          ?.imagen,
                                                                      precio: widget
                                                                          .productoPara
                                                                          ?.precio,
                                                                      subTotal:
                                                                          valueOrDefault<
                                                                              double>(
                                                                        functions.subtotalProducto(
                                                                            _model.countControllerValue!,
                                                                            widget.productoPara!.precio),
                                                                        0.0,
                                                                      ),
                                                                      creador:
                                                                          currentUserReference,
                                                                      cantidad:
                                                                          _model
                                                                              .countControllerValue,
                                                                    ),
                                                                    listaProductoRecordReference1);

                                                        await detalleProdCarritoRecord!
                                                            .reference
                                                            .update({
                                                          ...mapToFirestore(
                                                            {
                                                              'ListaProductos':
                                                                  FieldValue
                                                                      .increment(
                                                                          _model
                                                                              .countControllerValue!),
                                                              'Cantidad': FieldValue
                                                                  .increment(_model
                                                                      .productoreado!
                                                                      .subTotal),
                                                              'SelecListasProducto':
                                                                  FieldValue
                                                                      .arrayUnion([
                                                                _model
                                                                    .productoreado
                                                                    ?.reference
                                                              ]),
                                                            },
                                                          ),
                                                        });
                                                      } else {
                                                        var listaProductoRecordReference2 =
                                                            ListaProductoRecord
                                                                .collection
                                                                .doc();
                                                        await listaProductoRecordReference2
                                                            .set(
                                                                createListaProductoRecordData(
                                                          producto: widget
                                                              .productoPara
                                                              ?.reference,
                                                          nombre: widget
                                                              .productoPara
                                                              ?.nombre,
                                                          description: widget
                                                              .productoPara
                                                              ?.description,
                                                          imagen: widget
                                                              .productoPara
                                                              ?.imagen,
                                                          precio: widget
                                                              .productoPara
                                                              ?.precio,
                                                          subTotal:
                                                              valueOrDefault<
                                                                  double>(
                                                            functions.subtotalProducto(
                                                                _model
                                                                    .countControllerValue!,
                                                                widget
                                                                    .productoPara!
                                                                    .precio),
                                                            0.0,
                                                          ),
                                                          creador:
                                                              currentUserReference,
                                                          cantidad: _model
                                                              .countControllerValue,
                                                        ));
                                                        _model.productoCreado =
                                                            ListaProductoRecord
                                                                .getDocumentFromData(
                                                                    createListaProductoRecordData(
                                                                      producto: widget
                                                                          .productoPara
                                                                          ?.reference,
                                                                      nombre: widget
                                                                          .productoPara
                                                                          ?.nombre,
                                                                      description: widget
                                                                          .productoPara
                                                                          ?.description,
                                                                      imagen: widget
                                                                          .productoPara
                                                                          ?.imagen,
                                                                      precio: widget
                                                                          .productoPara
                                                                          ?.precio,
                                                                      subTotal:
                                                                          valueOrDefault<
                                                                              double>(
                                                                        functions.subtotalProducto(
                                                                            _model.countControllerValue!,
                                                                            widget.productoPara!.precio),
                                                                        0.0,
                                                                      ),
                                                                      creador:
                                                                          currentUserReference,
                                                                      cantidad:
                                                                          _model
                                                                              .countControllerValue,
                                                                    ),
                                                                    listaProductoRecordReference2);

                                                        await CarritoRecord
                                                            .collection
                                                            .doc()
                                                            .set({
                                                          ...createCarritoRecordData(
                                                            creado:
                                                                currentUserReference,
                                                            listaProductos: _model
                                                                .countControllerValue,
                                                            activado: true,
                                                            cantidad:
                                                                valueOrDefault<
                                                                    double>(
                                                              functions.subtotalProducto(
                                                                  _model
                                                                      .countControllerValue!,
                                                                  widget
                                                                      .productoPara!
                                                                      .precio),
                                                              0.0,
                                                            ),
                                                          ),
                                                          ...mapToFirestore(
                                                            {
                                                              'SelecListasProducto':
                                                                  [
                                                                _model
                                                                    .productoCreado
                                                                    ?.reference
                                                              ],
                                                            },
                                                          ),
                                                        });
                                                      }

                                                      context.pushNamed(
                                                          'ListaProducto');
                                                    } else {
                                                      context
                                                          .pushNamed('Login');
                                                    }

                                                    setState(() {});
                                                  },
                                                  text: 'Anadir a carrito',
                                                  options: FFButtonOptions(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.5,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.05,
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    iconPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    elevation: 3.0,
                                                    borderSide: const BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ].divide(const SizedBox(height: 4.0)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
