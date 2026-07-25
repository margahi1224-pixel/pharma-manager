import 'package:flutter/material.dart';

import '../core/routes/nav_items.dart';
import '../screens/dashboard/dashboard_screen.dart';
import '../screens/medicines/medicines_screen.dart';
import '../screens/sell/sell_screen.dart';
import '../screens/reports/reports_screen.dart';
import '../screens/expiry/expiry_screen.dart';
import '../screens/workers/workers_screen.dart';
import '../screens/settings/settings_screen.dart';
import '../screens/developer/developer_dashboard_screen.dart';

/// Root shell: BottomNavigationBar for the 4 core tabs (Dashboard, Medicines,
/// Sell, Reports) and a Drawer for everything else (Expiry, Workers,
/// Settings, Developer Dashboard). IndexedStack keeps each tab's state alive
/// when switching (important for Sell cart / Medicines search state).
class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  MainTab _currentTab = MainTab.dashboard;

  static const _tabScreens = <MainTab, Widget>{
    MainTab.dashboard: DashboardScreen(),
    MainTab.medicines: MedicinesScreen(),
    MainTab.sell: SellScreen(),
    MainTab.reports: ReportsScreen(),
  };

  void _openDrawerRoute(DrawerRoute route) {
    Navigator.of(context).pop(); // close drawer
    final screen = switch (route) {
      DrawerRoute.expiry => const ExpiryScreen(),
      DrawerRoute.workers => const WorkersScreen(),
      DrawerRoute.settings => const SettingsScreen(),
      DrawerRoute.developerDashboard => const DeveloperDashboardScreen(),
    };
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_currentTab.label)),
      drawer: _AppDrawer(onSelect: _openDrawerRoute),
      body: IndexedStack(
        index: MainTab.values.indexOf(_currentTab),
        children: MainTab.values.map((t) => _tabScreens[t]!).toList(),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: MainTab.values.indexOf(_currentTab),
        onDestinationSelected: (i) =>
            setState(() => _currentTab = MainTab.values[i]),
        destinations: MainTab.values
            .map((t) => NavigationDestination(
                  icon: Icon(t.icon),
                  selectedIcon: Icon(t.activeIcon),
                  label: t.label,
                ))
            .toList(),
      ),
    );
  }
}

class _AppDrawer extends StatelessWidget {
  const _AppDrawer({required this.onSelect});

  final void Function(DrawerRoute) onSelect;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // TODO: replace with real store name/logo from Settings
                  Text('Pharma Manager',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text('Store Dashboard'),
                ],
              ),
            ),
            for (final route in DrawerRoute.values)
              ListTile(
                leading: Icon(route.icon),
                title: Text(route.label),
                onTap: () => onSelect(route),
              ),
          ],
        ),
      ),
    );
  }
}
