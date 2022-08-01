import 'package:goliath_national_bank/data/file_system/json_local_storage.dart';
import 'package:goliath_national_bank/data/model/extract/extract.dart';
import 'package:goliath_national_bank/data/model/financial_education/financial_education.dart';

class FullData {
  late FinancialEducation financialEducation;
  late Extract extract;
}

class FullDataStorage {
  final JsonLocalStorage jsonLocalStorage = JsonLocalStorage();

  Future<String> get _filePath async {
    final path = await jsonLocalStorage.localPath;
    return '$path/fullData.json';
  }

  save(FullStoragedData data) async {
    return jsonLocalStorage.save(data, await _filePath);
  }

  dynamic read() async {
    return jsonLocalStorage.read(await _filePath);
  }
}
