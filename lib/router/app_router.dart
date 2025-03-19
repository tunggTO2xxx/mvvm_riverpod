import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_riverpod_base/views/post/post_screen.dart';
import 'package:mvvm_riverpod_base/views/splash/splash_screen.dart';

class AppRouter {
  AppRouter._();

  static const String splash = 'splash';
  static const String splashPath = '/';

  static const String post = 'post';
  static const String postPath = '/post';

  static GoRouter get router => _router;
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static final _router = GoRouter(
    navigatorKey: navigatorKey,
    routes: <GoRoute>[
      GoRoute(
        name: splash,
        path: splashPath,
        builder: (context, state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        name: post,
        path: postPath,
        builder: (context, state) => const PostScreen(),
      ),
    ],
  );
}
