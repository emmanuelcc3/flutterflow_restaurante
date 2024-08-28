import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderRecord extends FirestoreRecord {
  OrderRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "monto" field.
  double? _monto;
  double get monto => _monto ?? 0.0;
  bool hasMonto() => _monto != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "iva" field.
  double? _iva;
  double get iva => _iva ?? 0.0;
  bool hasIva() => _iva != null;

  // "creada" field.
  DateTime? _creada;
  DateTime? get creada => _creada;
  bool hasCreada() => _creada != null;

  // "carrito" field.
  DocumentReference? _carrito;
  DocumentReference? get carrito => _carrito;
  bool hasCarrito() => _carrito != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "listaProducto" field.
  List<DocumentReference>? _listaProducto;
  List<DocumentReference> get listaProducto => _listaProducto ?? const [];
  bool hasListaProducto() => _listaProducto != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _monto = castToType<double>(snapshotData['monto']);
    _status = snapshotData['status'] as String?;
    _iva = castToType<double>(snapshotData['iva']);
    _creada = snapshotData['creada'] as DateTime?;
    _carrito = snapshotData['carrito'] as DocumentReference?;
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _listaProducto = getDataList(snapshotData['listaProducto']);
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('order');

  static Stream<OrderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderRecord.fromSnapshot(s));

  static Future<OrderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderRecord.fromSnapshot(s));

  static OrderRecord fromSnapshot(DocumentSnapshot snapshot) => OrderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderRecordData({
  String? name,
  double? monto,
  String? status,
  double? iva,
  DateTime? creada,
  DocumentReference? carrito,
  DocumentReference? usuario,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'monto': monto,
      'status': status,
      'iva': iva,
      'creada': creada,
      'carrito': carrito,
      'usuario': usuario,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderRecordDocumentEquality implements Equality<OrderRecord> {
  const OrderRecordDocumentEquality();

  @override
  bool equals(OrderRecord? e1, OrderRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.monto == e2?.monto &&
        e1?.status == e2?.status &&
        e1?.iva == e2?.iva &&
        e1?.creada == e2?.creada &&
        e1?.carrito == e2?.carrito &&
        e1?.usuario == e2?.usuario &&
        listEquality.equals(e1?.listaProducto, e2?.listaProducto) &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(OrderRecord? e) => const ListEquality().hash([
        e?.name,
        e?.monto,
        e?.status,
        e?.iva,
        e?.creada,
        e?.carrito,
        e?.usuario,
        e?.listaProducto,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderRecord;
}
