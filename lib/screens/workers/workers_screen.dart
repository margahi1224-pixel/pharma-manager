import 'package:flutter/material.dart';
import '../../widgets/placeholder_screen.dart';

/// Add worker (email+password) + permission toggles: can_sell,
/// can_add_medicine, can_update_medicine.
class WorkersScreen extends StatelessWidget {
  const WorkersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Workers')),
      body: const PlaceholderScreen(
        icon: Icons.people_outline,
        title: 'Workers',
        phase: 'Worker accounts + permissions — Phase 2 (after core Auth)',
      ),
    );
  }
}
