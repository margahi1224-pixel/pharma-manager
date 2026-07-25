import 'package:isar/isar.dart';

part 'worker.g.dart';

/// Staff account with granular permissions. Store Admin (first signup) has
/// all permissions implicitly and isn't stored as a Worker.
@collection
class Worker {
  Id id = Isar.autoIncrement;

  @Index(unique: true, caseSensitive: false)
  late String email;

  late String passwordHash; // never store plaintext

  bool canSell = false;
  bool canAddMedicine = false;
  bool canUpdateMedicine = false;

  bool active = true;
  DateTime createdAt = DateTime.now();
}
