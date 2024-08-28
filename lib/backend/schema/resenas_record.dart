import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResenasRecord extends FirestoreRecord {
  ResenasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "review" field.
  String? _review;
  String get review => _review ?? '';
  bool hasReview() => _review != null;

  // "satisfaccion" field.
  String? _satisfaccion;
  String get satisfaccion => _satisfaccion ?? '';
  bool hasSatisfaccion() => _satisfaccion != null;

  // "servicio" field.
  String? _servicio;
  String get servicio => _servicio ?? '';
  bool hasServicio() => _servicio != null;

  // "activado" field.
  bool? _activado;
  bool get activado => _activado ?? false;
  bool hasActivado() => _activado != null;

  // "create" field.
  DateTime? _create;
  DateTime? get create => _create;
  bool hasCreate() => _create != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _review = snapshotData['review'] as String?;
    _satisfaccion = snapshotData['satisfaccion'] as String?;
    _servicio = snapshotData['servicio'] as String?;
    _activado = snapshotData['activado'] as bool?;
    _create = snapshotData['create'] as DateTime?;
    _user = snapshotData['user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('resenas');

  static Stream<ResenasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResenasRecord.fromSnapshot(s));

  static Future<ResenasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResenasRecord.fromSnapshot(s));

  static ResenasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResenasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResenasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResenasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResenasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResenasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResenasRecordData({
  String? name,
  String? review,
  String? satisfaccion,
  String? servicio,
  bool? activado,
  DateTime? create,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'review': review,
      'satisfaccion': satisfaccion,
      'servicio': servicio,
      'activado': activado,
      'create': create,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResenasRecordDocumentEquality implements Equality<ResenasRecord> {
  const ResenasRecordDocumentEquality();

  @override
  bool equals(ResenasRecord? e1, ResenasRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.review == e2?.review &&
        e1?.satisfaccion == e2?.satisfaccion &&
        e1?.servicio == e2?.servicio &&
        e1?.activado == e2?.activado &&
        e1?.create == e2?.create &&
        e1?.user == e2?.user;
  }

  @override
  int hash(ResenasRecord? e) => const ListEquality().hash([
        e?.name,
        e?.review,
        e?.satisfaccion,
        e?.servicio,
        e?.activado,
        e?.create,
        e?.user
      ]);

  @override
  bool isValidKey(Object? o) => o is ResenasRecord;
}
