import 'package:flutter/material.dart';
import '../../widgets/placeholder_screen.dart';

/// Owner-only: list of all pharmacy stores using the app, suspend/delete.
/// Hidden behind a dev-only flag/role once Auth ships.
class DeveloperDashboardScreen extends StatelessWidget {
  const DeveloperDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Developer Dashboard')),
      body: const PlaceholderScreen(
        icon: Icons.admin_panel_settings_outlined,
        title: 'Developer Dashboard',
        phase: 'All-store list + suspend/delete — Phase 2/3',
      ),
    );
  }
}
