import 'package:flutter/material.dart';

/// Generic "coming soon" body used by skeleton screens before their real
/// feature is implemented. Swap this out feature-by-feature.
class PlaceholderScreen extends StatelessWidget {
  const PlaceholderScreen({
    super.key,
    required this.icon,
    required this.title,
    required this.phase,
  });

  final IconData icon;
  final String title;
  final String phase;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 64, color: Theme.of(context).colorScheme.outline),
          const SizedBox(height: 12),
          Text(title, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 4),
          Text(phase,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: Theme.of(context).colorScheme.outline)),
        ],
      ),
    );
  }
}
