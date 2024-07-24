import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListaProductoRecord extends FirestoreRecord {
  ListaProductoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Producto" field.
  DocumentReference? _producto;
  DocumentReference? get producto => _producto;
  bool hasProducto() => _producto != null;

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "Precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "SubTotal" field.
  double? _subTotal;
  double get subTotal => _subTotal ?? 0.0;
  bool hasSubTotal() => _subTotal != null;

  // "Carrito" field.
  DocumentReference? _carrito;
  DocumentReference? get carrito => _carrito;
  bool hasCarrito() => _carrito != null;

  // "creador" field.
  DocumentReference? _creador;
  DocumentReference? get creador => _creador;
  bool hasCreador() => _creador != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  void _initializeFields() {
    _producto = snapshotData['Producto'] as DocumentReference?;
    _nombre = snapshotData['Nombre'] as String?;
    _description = snapshotData['Description'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _precio = castToType<double>(snapshotData['Precio']);
    _subTotal = castToType<double>(snapshotData['SubTotal']);
    _carrito = snapshotData['Carrito'] as DocumentReference?;
    _creador = snapshotData['creador'] as DocumentReference?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ListaProducto');

  static Stream<ListaProductoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ListaProductoRecord.fromSnapshot(s));

  static Future<ListaProductoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ListaProductoRecord.fromSnapshot(s));

  static ListaProductoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ListaProductoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ListaProductoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ListaProductoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ListaProductoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ListaProductoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createListaProductoRecordData({
  DocumentReference? producto,
  String? nombre,
  String? description,
  String? imagen,
  double? precio,
  double? subTotal,
  DocumentReference? carrito,
  DocumentReference? creador,
  int? cantidad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Producto': producto,
      'Nombre': nombre,
      'Description': description,
      'imagen': imagen,
      'Precio': precio,
      'SubTotal': subTotal,
      'Carrito': carrito,
      'creador': creador,
      'cantidad': cantidad,
    }.withoutNulls,
  );

  return firestoreData;
}

class ListaProductoRecordDocumentEquality
    implements Equality<ListaProductoRecord> {
  const ListaProductoRecordDocumentEquality();

  @override
  bool equals(ListaProductoRecord? e1, ListaProductoRecord? e2) {
    return e1?.producto == e2?.producto &&
        e1?.nombre == e2?.nombre &&
        e1?.description == e2?.description &&
        e1?.imagen == e2?.imagen &&
        e1?.precio == e2?.precio &&
        e1?.subTotal == e2?.subTotal &&
        e1?.carrito == e2?.carrito &&
        e1?.creador == e2?.creador &&
        e1?.cantidad == e2?.cantidad;
  }

  @override
  int hash(ListaProductoRecord? e) => const ListEquality().hash([
        e?.producto,
        e?.nombre,
        e?.description,
        e?.imagen,
        e?.precio,
        e?.subTotal,
        e?.carrito,
        e?.creador,
        e?.cantidad
      ]);

  @override
  bool isValidKey(Object? o) => o is ListaProductoRecord;
}
