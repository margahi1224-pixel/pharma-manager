import 'package:flutter/material.dart';
import '../../widgets/placeholder_screen.dart';

/// Billing screen: search/QR scan medicine -> add to cart -> auto total ->
/// print bill (58/80mm) -> stock auto-decrements.
class SellScreen extends StatelessWidget {
  const SellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PlaceholderScreen(
      icon: Icons.point_of_sale_outlined,
      title: 'Sell / Billing',
      phase: 'Cart + QR scan-to-sell + print — Phase 1',
    );
  }
}
