import 'package:bloc1/pages/not_found/not_found.dart';
import 'package:bloc1/pages/other/other_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter.dart';
import '../pages/home/home.dart';

class AppRoute {

  final myCounter = CounterCubit();

  Route onRoute(RouteSettings settings){
    switch(settings.name){
      case "/":
        return MaterialPageRoute(
          builder: (context) {
            return BlocProvider.value(
              value: myCounter,
              child: MyHomePage(),
            );
          }
        );
      case "/other":
        return MaterialPageRoute(
          builder: (context) {
            return BlocProvider.value(
              value: myCounter,
              child: const OtherPage(),
            );
          }
        );
      default:
        return MaterialPageRoute(
          builder: (context) {
            return const NotFound();
          }
        );
    }
  }
}