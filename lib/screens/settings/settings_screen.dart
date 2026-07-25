import 'package:flutter/material.dart';
import '../../widgets/placeholder_screen.dart';

/// Language (EN/UR), Theme (Light/Dark), store name/address/logo,
/// bill paper size (58/80mm).
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: const PlaceholderScreen(
        icon: Icons.settings_outlined,
        title: 'Settings',
        phase: 'Language/Theme/Store/Bill size — Phase 2',
      ),
    );
  }
}
