import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

class HomeController extends BlocBase{
  
  final _streamController = BehaviorSubject<int>.seeded(0);
  Stream<int> get drawerOut => _streamController.stream;
  Sink<int> get drawerIn => _streamController.sink;

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }
}