import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../models/medicine.dart';
import '../models/sale.dart';
import '../models/worker.dart';
import '../models/store.dart';

/// Opens the single on-device Isar instance used everywhere in the app.
/// Call `IsarService.open()` once (e.g. in main() before runApp, or lazily
/// via a Riverpod provider) and reuse `IsarService.instance`.
class IsarService {
  static Isar? _instance;
  static Isar get instance {
    final isar = _instance;
    if (isar == null) {
      throw StateError('IsarService.open() must be called before use');
    }
    return isar;
  }

  static Future<Isar> open() async {
    if (_instance != null) return _instance!;
    final dir = await getApplicationDocumentsDirectory();
    _instance = await Isar.open(
      [MedicineSchema, SaleSchema, WorkerSchema, StoreSchema],
      directory: dir.path,
    );
    return _instance!;
  }
}
