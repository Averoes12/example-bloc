import 'package:bloc1/bloc/counter.dart';
import 'package:bloc1/bloc/theme.dart';
import 'package:bloc1/pages/home/home.dart';
import 'package:bloc1/pages/other/other_page.dart';
import 'package:bloc1/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final router = AppRoute();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterCubit(),
        ),
        BlocProvider(
          create: (context) => ThemeCubit(),
        )
      ],
      child: BlocBuilder<ThemeCubit, bool>(
        builder: (context, state){
          return MaterialApp(
            title: 'Flutter Demo',
            theme: state == true ? ThemeData.dark() : ThemeData.light(),
            // initialRoute: "/",
            // routes: {
            //   "/": (context) => BlocProvider.value(
            //         value: myCounter,
            //         child: MyHomePage(),
            //       ),
            //   "/other": (context) => BlocProvider.value(
            //         value: myCounter,
            //         child: const OtherPage(),
            //       )
            // },
            onGenerateRoute: router.onRoute,
          );
        },
      ),
    );
  }
}
