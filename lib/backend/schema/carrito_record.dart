import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarritoRecord extends FirestoreRecord {
  CarritoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Creado" field.
  DocumentReference? _creado;
  DocumentReference? get creado => _creado;
  bool hasCreado() => _creado != null;

  // "ListaProductos" field.
  int? _listaProductos;
  int get listaProductos => _listaProductos ?? 0;
  bool hasListaProductos() => _listaProductos != null;

  // "Activado" field.
  bool? _activado;
  bool get activado => _activado ?? false;
  bool hasActivado() => _activado != null;

  // "Cantidad" field.
  double? _cantidad;
  double get cantidad => _cantidad ?? 0.0;
  bool hasCantidad() => _cantidad != null;

  // "SelecListasProducto" field.
  List<DocumentReference>? _selecListasProducto;
  List<DocumentReference> get selecListasProducto =>
      _selecListasProducto ?? const [];
  bool hasSelecListasProducto() => _selecListasProducto != null;

  void _initializeFields() {
    _creado = snapshotData['Creado'] as DocumentReference?;
    _listaProductos = castToType<int>(snapshotData['ListaProductos']);
    _activado = snapshotData['Activado'] as bool?;
    _cantidad = castToType<double>(snapshotData['Cantidad']);
    _selecListasProducto = getDataList(snapshotData['SelecListasProducto']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Carrito');

  static Stream<CarritoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarritoRecord.fromSnapshot(s));

  static Future<CarritoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarritoRecord.fromSnapshot(s));

  static CarritoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarritoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarritoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarritoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarritoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarritoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarritoRecordData({
  DocumentReference? creado,
  int? listaProductos,
  bool? activado,
  double? cantidad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Creado': creado,
      'ListaProductos': listaProductos,
      'Activado': activado,
      'Cantidad': cantidad,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarritoRecordDocumentEquality implements Equality<CarritoRecord> {
  const CarritoRecordDocumentEquality();

  @override
  bool equals(CarritoRecord? e1, CarritoRecord? e2) {
    const listEquality = ListEquality();
    return e1?.creado == e2?.creado &&
        e1?.listaProductos == e2?.listaProductos &&
        e1?.activado == e2?.activado &&
        e1?.cantidad == e2?.cantidad &&
        listEquality.equals(e1?.selecListasProducto, e2?.selecListasProducto);
  }

  @override
  int hash(CarritoRecord? e) => const ListEquality().hash([
        e?.creado,
        e?.listaProductos,
        e?.activado,
        e?.cantidad,
        e?.selecListasProducto
      ]);

  @override
  bool isValidKey(Object? o) => o is CarritoRecord;
}
