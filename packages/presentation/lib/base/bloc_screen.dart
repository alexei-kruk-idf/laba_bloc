import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

abstract class BlocScreen extends StatefulWidget {
  const BlocScreen({Key? key}) : super(key: key);
}

abstract class BlocScreenState<BS extends BlocScreen, B extends Bloc> extends State<BS> {
  @protected
  final bloc = GetIt.I.get<B>();
}
