import 'package:flutter/material.dart';
import '../../widgets/placeholder_screen.dart';

/// Store Dashboard: 4 stat boxes (Aaj ki Sale, Low Stock, Expire Soon, +1)
/// + expiry widget + sync status. Wired up in Phase 1.
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PlaceholderScreen(
      icon: Icons.dashboard_outlined,
      title: 'Dashboard',
      phase: 'Stat boxes + expiry widget — Phase 1',
    );
  }
}
