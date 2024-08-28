import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductoRecord extends FirestoreRecord {
  ProductoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "Creacion" field.
  DateTime? _creacion;
  DateTime? get creacion => _creacion;
  bool hasCreacion() => _creacion != null;

  // "Modificado" field.
  DateTime? _modificado;
  DateTime? get modificado => _modificado;
  bool hasModificado() => _modificado != null;

  // "En_venta" field.
  bool? _enVenta;
  bool get enVenta => _enVenta ?? false;
  bool hasEnVenta() => _enVenta != null;

  // "Descuento" field.
  double? _descuento;
  double get descuento => _descuento ?? 0.0;
  bool hasDescuento() => _descuento != null;

  // "Imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "promocion" field.
  bool? _promocion;
  bool get promocion => _promocion ?? false;
  bool hasPromocion() => _promocion != null;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
    _description = snapshotData['Description'] as String?;
    _precio = castToType<double>(snapshotData['Precio']);
    _creacion = snapshotData['Creacion'] as DateTime?;
    _modificado = snapshotData['Modificado'] as DateTime?;
    _enVenta = snapshotData['En_venta'] as bool?;
    _descuento = castToType<double>(snapshotData['Descuento']);
    _imagen = snapshotData['Imagen'] as String?;
    _promocion = snapshotData['promocion'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Producto');

  static Stream<ProductoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductoRecord.fromSnapshot(s));

  static Future<ProductoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductoRecord.fromSnapshot(s));

  static ProductoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductoRecordData({
  String? nombre,
  String? description,
  double? precio,
  DateTime? creacion,
  DateTime? modificado,
  bool? enVenta,
  double? descuento,
  String? imagen,
  bool? promocion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
      'Description': description,
      'Precio': precio,
      'Creacion': creacion,
      'Modificado': modificado,
      'En_venta': enVenta,
      'Descuento': descuento,
      'Imagen': imagen,
      'promocion': promocion,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductoRecordDocumentEquality implements Equality<ProductoRecord> {
  const ProductoRecordDocumentEquality();

  @override
  bool equals(ProductoRecord? e1, ProductoRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.description == e2?.description &&
        e1?.precio == e2?.precio &&
        e1?.creacion == e2?.creacion &&
        e1?.modificado == e2?.modificado &&
        e1?.enVenta == e2?.enVenta &&
        e1?.descuento == e2?.descuento &&
        e1?.imagen == e2?.imagen &&
        e1?.promocion == e2?.promocion;
  }

  @override
  int hash(ProductoRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.description,
        e?.precio,
        e?.creacion,
        e?.modificado,
        e?.enVenta,
        e?.descuento,
        e?.imagen,
        e?.promocion
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductoRecord;
}
