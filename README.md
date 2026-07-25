# Pharma Manager

Cross-platform (Android + iOS) Pharmacy Management System — Flutter + Isar
(fast local search) + offline-first.

## Current status: Skeleton (Phase 0)

- Bottom nav (Dashboard, Medicines, Sell, Reports) + Drawer (Expiry,
  Workers, Settings, Developer Dashboard)
- All screens are placeholders — wired up feature-by-feature next
- Isar models scaffolded: `Medicine`, `Sale`, `Worker`, `Store`
- **Auth intentionally not built yet** — app boots straight into the
  dashboard so every screen can be tested without logging in repeatedly.
  Login/Signup is the last feature added (see `lib/main.dart`).

## First-time setup (on your machine, after pushing this to GitHub)

```bash
git init
git add .
git commit -m "Skeleton: nav shell + Isar models"
git branch -M main
git remote add origin https://github.com/<you>/pharma-manager.git
git push -u origin main
```

Then locally (or let GitHub Actions do it — see below):

```bash
flutter create --platforms=android,ios .   # generates android/ + ios/ folders
flutter pub get
dart run build_runner build --delete-conflicting-outputs   # generates *.g.dart for Isar
flutter run
```

## GitHub Actions (automatic APK build)

`.github/workflows/build-apk.yml` runs on every push to `main`:
1. Sets up Flutter + Java
2. Regenerates the `android/` platform folder if it isn't committed
3. `flutter pub get`
4. Generates Isar's `*.g.dart` files via `build_runner`
5. `flutter build apk --release`
6. Uploads the APK as a workflow artifact — download it from the
   **Actions** tab → the workflow run → **Artifacts**

## Project structure

```
lib/
  main.dart                 # entry point, boots to AppShell (no login)
  core/
    theme/app_theme.dart    # light/dark theme
    routes/nav_items.dart   # bottom-nav tabs + drawer routes
  models/                   # Isar collections: Medicine, Sale, Worker, Store
  database/isar_service.dart
  widgets/
    app_shell.dart          # bottom nav + drawer shell
    placeholder_screen.dart # "coming soon" body for unbuilt screens
  screens/
    dashboard/  medicines/  sell/  reports/   (bottom-nav tabs)
    expiry/  workers/  settings/  developer/  (drawer-only)
```

## Build phases (see project plan)

1. **Phase 1** — Medicines CRUD + search, Sell/Billing, QR scan, Dashboard
   stats, Expiry alerts
2. **Phase 2** — Workers + permissions, Reports + CSV, Offline sync,
   Settings, **Auth & Onboarding (last)**
3. **Phase 3 (V2)** — Controlled medicines, blocked CNIC list, in-app
   notifications, backup/restore, audit log
4. **Phase 4 (V2.1)** — MCP server + OAuth consent, AI read/write tools
