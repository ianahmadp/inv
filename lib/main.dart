import 'dart:html';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:undangan/generate_page.dart';
import 'package:undangan/main_page.dart';

import 'configs/themes/app_colors.dart';
// import 'package:flutter_web_plugins/url_strategy.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // usePathUrlStrategy();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyBUUv-eZ3s1xSSmb-q3aMahK36L1S5VXis",
      authDomain: "undangan-81360.firebaseapp.com",
      databaseURL: "https://undangan-81360-default-rtdb.firebaseio.com",
      projectId: "undangan-81360",
      storageBucket: "undangan-81360.appspot.com",
      messagingSenderId: "861231974555",
      appId: "1:861231974555:web:1d6b9cc7ff497ccc745e3e",
    ),
  );
  runApp(MyApp());
}

final router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: '/to',
  errorBuilder: (context, state) => ContainerScreen(child: MainPage()),
  routes: <GoRoute>[
    GoRoute(
      name: 'root',
      path: '/to/:to',
      builder: (context, state) => ContainerScreen(
        child: MainPage(
          toName: state.params['to']!,
        ),
      ),
    ),
    GoRoute(
      name: 'generated',
      path: '/generated',
      builder: (context, state) => const GeneratePage(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Wenty & Ian',
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      theme: ThemeData(
        primaryColor: AppColors.primaryDark2Color,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
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
