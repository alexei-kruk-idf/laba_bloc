import 'package:flutter/material.dart';
import '../../base/bloc_screen.dart';
import 'main_bloc.dart';

class MainScreen extends BlocScreen {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends BlocScreenState<MainScreen, MainBloc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            const TextField(),
            ElevatedButton(
              onPressed: () {},
              child: Text('data'),
            ),
          ],
        ),
      ),
    );
  }
}
