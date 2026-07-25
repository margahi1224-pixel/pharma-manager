import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/theme/app_theme.dart';
import 'widgets/app_shell.dart';

// TODO(auth-phase): App will start from Splash -> Login/Signup once auth is
// added in the final phase. For now (skeleton/testing), we boot straight
// into AppShell using a fake "DevMode" session so every screen is reachable
// without logging in every time.

void main() {
  runApp(const ProviderScope(child: PharmaManagerApp()));
}

class PharmaManagerApp extends StatelessWidget {
  const PharmaManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pharma Manager',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      home: const AppShell(),
    );
  }
}
