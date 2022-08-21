import 'package:flutter/material.dart';
import 'package:presentation/base/bloc_tile.dart';
import 'package:presentation/screen/main/main_tile.dart';
import '../../base/bloc_screen.dart';
import 'main_bloc.dart';

class MainScreen extends BlocScreen {
  const MainScreen({Key? key}) : super(key: key);

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
          if (blocData is MainTile && !data.isLoading) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(blocData.factorial.toString()),
                    TextField(controller: bloc.editController),
                    ElevatedButton(
                      onPressed: () => bloc.getFactorial(),
                      child: const Text('Get factorial'),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
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
