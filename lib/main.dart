import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:undangan/first_screen.dart';
import 'package:undangan/main_screen.dart';

import 'configs/themes/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Undangan Dongs',
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      theme: ThemeData(
        primaryColor: AppColors.primaryDark2Color,
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  late final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) =>
              const IntroScreen(),
          routes: <GoRoute>[
            GoRoute(
              name: 'to',
              path: 'to/:to',
              builder: (BuildContext context, GoRouterState state) {
                return FirstScreen(
                  toName: state.params['to']!,
                );
              },
            ),
          ]),
      GoRoute(
        name: 'main',
        path: '/main',
        builder: (BuildContext context, GoRouterState state) {
          return MainScreen();
        },
      ),
    ],
  );
}

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
