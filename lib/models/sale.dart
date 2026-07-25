import 'package:isar/isar.dart';

part 'sale.g.dart';

/// A single bill/transaction. Line items are embedded so a whole sale can
/// be written/read in one Isar operation (fast + offline-friendly).
@collection
class Sale {
  Id id = Isar.autoIncrement;

  late DateTime createdAt;
  late double total;

  List<SaleItem> items = [];

  /// Offline-first sync bookkeeping. false until the record is confirmed
  /// uploaded; the Dashboard shows "Synced" / "Pending N items" from this.
  bool synced = false;

  /// V2 compliance: CNIC captured when any item.isControlled == true.
  String? customerCnic;
}

@embedded
class SaleItem {
  late String medicineName;
  late int quantity;
  late double unitPrice;
}
