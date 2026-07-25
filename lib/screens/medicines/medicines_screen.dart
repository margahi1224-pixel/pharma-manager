import 'package:flutter/material.dart';
import '../../widgets/placeholder_screen.dart';

/// Medicines CRUD + fast indexed search (Isar) + QR Scan-to-Add.
class MedicinesScreen extends StatelessWidget {
  const MedicinesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const PlaceholderScreen(
        icon: Icons.medication_outlined,
        title: 'Medicines',
        phase: 'CRUD + fast search + QR scan — Phase 1',
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {}, // TODO: open Add Medicine form
        icon: const Icon(Icons.add),
        label: const Text('Add'),
      ),
    );
  }
}
