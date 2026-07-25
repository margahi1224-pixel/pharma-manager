import 'package:flutter/material.dart';

/// Main tabs shown in the BottomNavigationBar (most-used screens).
enum MainTab { dashboard, medicines, sell, reports }

extension MainTabX on MainTab {
  String get label => switch (this) {
        MainTab.dashboard => 'Dashboard',
        MainTab.medicines => 'Medicines',
        MainTab.sell => 'Sell',
        MainTab.reports => 'Reports',
      };

  IconData get icon => switch (this) {
        MainTab.dashboard => Icons.dashboard_outlined,
        MainTab.medicines => Icons.medication_outlined,
        MainTab.sell => Icons.point_of_sale_outlined,
        MainTab.reports => Icons.bar_chart_outlined,
      };

  IconData get activeIcon => switch (this) {
        MainTab.dashboard => Icons.dashboard,
        MainTab.medicines => Icons.medication,
        MainTab.sell => Icons.point_of_sale,
        MainTab.reports => Icons.bar_chart,
      };
}

/// Secondary screens reachable via the side Drawer only.
enum DrawerRoute { expiry, workers, settings, developerDashboard }

extension DrawerRouteX on DrawerRoute {
  String get label => switch (this) {
        DrawerRoute.expiry => 'Expiry Alerts',
        DrawerRoute.workers => 'Workers',
        DrawerRoute.settings => 'Settings',
        DrawerRoute.developerDashboard => 'Developer Dashboard',
      };

  IconData get icon => switch (this) {
        DrawerRoute.expiry => Icons.warning_amber_outlined,
        DrawerRoute.workers => Icons.people_outline,
        DrawerRoute.settings => Icons.settings_outlined,
        DrawerRoute.developerDashboard => Icons.admin_panel_settings_outlined,
      };
}
