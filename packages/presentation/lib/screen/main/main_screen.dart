import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presentation/base/bloc_screen.dart';
import 'cubit/main_cubit.dart';

class MainScreen extends BlocScreen {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends BlocScreenState<MainScreen, MainCubit> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainCubit>(
      create: (context) => bloc,
      child: BlocBuilder<MainCubit, MainBlocState>(
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
        },
      ),
    );
  }
}
