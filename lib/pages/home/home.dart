import 'package:bloc1/bloc/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/counter.dart';
import 'data_widget.dart';

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Builder"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(context.read<ThemeCubit>().state == false ? Icons.dark_mode : Icons.light_mode),
            onPressed: (){
              context.read<ThemeCubit>().toggleTheme();
            },
          )
        ],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              child: InkWell(
                onTap: (){
                  context.read<CounterCubit>().decrement();
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: const Icon(Icons.minimize),
                ),
              ),
            ),
            const DataWidget(),
            Material(
              child: InkWell(
                onTap: (){
                  context.read<CounterCubit>().increment();
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: const Icon(Icons.add),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, "/other");
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}