import 'package:flutter/material.dart';
import '../../widgets/placeholder_screen.dart';

/// Daily/Weekly/Monthly sales, top-selling medicine, low stock, expiry
/// list, CSV export.
class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PlaceholderScreen(
      icon: Icons.bar_chart_outlined,
      title: 'Reports',
      phase: 'Sales/stock/expiry reports + CSV — Phase 2',
    );
  }
}
