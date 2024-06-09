import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/counter.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, int>(
        bloc: context.read<CounterCubit>(),
        builder: (context, state) {
          return Center(
            child: Text("$state", style: const TextStyle(
                fontSize: 50
            ),),
          );
        }
    );
  }
}