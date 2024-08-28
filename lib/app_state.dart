import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _Buscando = false;
  bool get Buscando => _Buscando;
  set Buscando(bool value) {
    _Buscando = value;
  }

  List<DocumentReference> _Promo = [];
  List<DocumentReference> get Promo => _Promo;
  set Promo(List<DocumentReference> value) {
    _Promo = value;
  }

  void addToPromo(DocumentReference value) {
    Promo.add(value);
  }

  void removeFromPromo(DocumentReference value) {
    Promo.remove(value);
  }

  void removeAtIndexFromPromo(int index) {
    Promo.removeAt(index);
  }

  void updatePromoAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    Promo[index] = updateFn(_Promo[index]);
  }

  void insertAtIndexInPromo(int index, DocumentReference value) {
    Promo.insert(index, value);
  }

  double _slider = 0.0;
  double get slider => _slider;
  set slider(double value) {
    _slider = value;
  }
}
