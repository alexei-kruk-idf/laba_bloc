import 'package:flutter/material.dart';
import 'package:presentation/base/bloc_tile.dart';
import 'package:presentation/screen/main/main_tile.dart';
import '../../base/bloc_screen.dart';
import 'main_bloc.dart';

class MainScreen extends BlocScreen {
  MainScreen({Key? key}) : super();
  @override
  State createState() => _MainScreenState();
}

class _MainScreenState extends BlocScreenState<MainScreen, MainBloc> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.dataStream,
      builder: (context, snapshot) {
        if (snapshot.data != null) {
          final data = snapshot.data as BlocTile;
          final blocData = data.data;
          if (blocData is MainTile) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(blocData.factorial.toString()),
                    TextField(controller: bloc.editController),
                    ElevatedButton(
                      onPressed: () => bloc.getFactorial(5),
                      child: const Text('Get factorial'),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return Scaffold(
              body: Container(),
            );
          }
        } else {
          return Scaffold(
            body: Container(),
          );
        }
      },
    );
  }
}
