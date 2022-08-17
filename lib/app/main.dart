import 'package:domain/usecase/palindrome_usecase.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:presentation/screen/main/main_screen.dart';

import 'app_injector.dart';

void main() {
  initAppInjector();
  final t = GetIt.I.get<PalindromeUseCase>();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}
