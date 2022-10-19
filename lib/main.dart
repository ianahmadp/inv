import 'dart:html';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:undangan/main_page.dart';

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
    errorBuilder: (context, state) => ContainerScreen(child: MainPage()),
    routes: <GoRoute>[
      GoRoute(
        path: '/:to',
        builder: (BuildContext context, GoRouterState state) => ContainerScreen(
            child: MainPage(
          toName: state.params['to']!,
        )),
      ),
    ],
  );
}

class ContainerScreen extends StatelessWidget {
  Widget child;

  ContainerScreen({required this.child});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = window.screen!.width! > 500 ? 500 : double.infinity;
        return Center(
            child:
                SizedBox(width: width, height: double.infinity, child: child));
      },
    );
  }
}
