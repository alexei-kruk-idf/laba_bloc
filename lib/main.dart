import 'package:flutter/material.dart';
import 'package:laba_bloc/presentation/lib/screen/main/main_screen.dart';
import 'package:laba_bloc/presentation/lib/di/presentation_injector.dart';
import 'package:laba_bloc/domain/lib/di/presentation_injector.dart';

void main() {
  initDomain();
  initPresentation();
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
      home: const MainScreen(),
    );
  }
}
