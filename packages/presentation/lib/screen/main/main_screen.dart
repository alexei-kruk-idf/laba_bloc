import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presentation/base/bloc_screen.dart';
import 'bloc/main_bloc.dart';

class MainScreen extends BlocScreen {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends BlocScreenState<MainScreen, MainBloc> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainBloc>(
      create: (context) => bloc,
      child: BlocBuilder<MainBloc, MainBlocState>(
        builder: (context, state) {
          if (!state.isLoading) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(state.factorial),
                    TextField(
                      controller: bloc.editController,
                      onChanged: bloc.onTextChanged,
                    ),
                    ElevatedButton(
                      onPressed: () => bloc.add(MainBlocGetFactorial()),
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
        },
      ),
    );
  }
}
