import 'package:architecture/features/test_screen/bloc/test_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TestBloc(),
      child: Scaffold(body: _TestWidget()),
    );
  }
}

class _TestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<TestBloc>(context);
    return Center(
        child: Column(
      children: [
        ElevatedButton(onPressed: bloc.onButtonRefetch, child: const Text('Refetch')),
        ElevatedButton(onPressed: bloc.onButtonUpdateServeer, child: const Text('Update to server')),
      ],
    ));
  }
}
