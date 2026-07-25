import 'package:isar/isar.dart';

part 'store.g.dart';

/// Single-row table: the pharmacy's own profile. First signup creates this
/// and becomes Store Admin.
@collection
class Store {
  Id id = Isar.autoIncrement;

  late String name;
  String? address;
  String? logoPath;

  /// 'en' or 'ur'
  String language = 'en';

  /// 58 or 80 (mm) — thermal bill width.
  int billPaperSizeMm = 58;

  bool suspended = false; // set by Developer Dashboard
}
