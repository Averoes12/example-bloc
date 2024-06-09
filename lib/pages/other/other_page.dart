import 'package:bloc1/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Other Page"),
      ),
      body: BlocBuilder(
        bloc: context.read<CounterCubit>(), 
        builder: (context, state) {
          return Center(
            child: Text("$state", style: const TextStyle(fontSize: 50),),
          );
        }
      ),
    );
  }
}
