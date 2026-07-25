import 'package:flutter/material.dart';
import '../../widgets/placeholder_screen.dart';

/// Full expiry list, items expiring within 7 days highlighted red.
class ExpiryScreen extends StatelessWidget {
  const ExpiryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expiry Alerts')),
      body: const PlaceholderScreen(
        icon: Icons.warning_amber_outlined,
        title: 'Expiry Alerts',
        phase: 'Expiry list w/ red 7-day warning — Phase 1',
      ),
    );
  }
}
