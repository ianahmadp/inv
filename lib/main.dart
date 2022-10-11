import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
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
      title: 'Wenty & Ian',
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
    errorBuilder: (context, state) => FirstScreen(),
    routes: <GoRoute>[
      GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) => FirstScreen(),
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
          return const MainScreen();
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
