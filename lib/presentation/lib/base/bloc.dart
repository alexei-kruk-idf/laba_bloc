import 'dart:async';
import 'package:flutter/foundation.dart';
import 'bloc_tile.dart';

abstract class Bloc {
  Stream<BlocTile> get dataStream;
}

abstract class BlocImpl extends Bloc {
  final _data = StreamController<BlocTile>();
  final _blocTile = BlocTile.init();

  @override
  Stream<BlocTile> get dataStream => _data.stream;

  @protected
  void handleData({bool? isLoading, bool? isValid, dynamic data}) {
    _blocTile.updateParams(isLoading, data);
    _data.add(_blocTile.copy());
  }
}
