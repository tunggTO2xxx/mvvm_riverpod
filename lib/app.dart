import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_riverpod_base/core/config/hive_service.dart';
import 'package:mvvm_riverpod_base/core/network/network_provider.dart';
import 'package:mvvm_riverpod_base/l10n/l10n.dart';
import 'package:mvvm_riverpod_base/router/app_router.dart';
import 'package:mvvm_riverpod_base/utils/helper/language_helper/language_state_notifier.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Future<void> setupAndRunApp() async {
  await HiveService.I.init();

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(dioProvider);

    final languageState = ref.watch(languageProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      locale: languageState.locale,
      supportedLocales: L10n.delegate.supportedLocales,
      localizationsDelegates: const [
        AppLocalizationDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      routerConfig: AppRouter.router,
    );
  }
}
