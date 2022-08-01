import 'package:goliath_national_bank/data/model/extract/extract.dart';
import 'package:goliath_national_bank/data/model/financial_education/financial_education.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:convert';
import 'dart:io';

class FullStoragedData {
  late FinancialEducation financialEducation;
  late Extract extract;
}

class JsonLocalStorage {
  Future<String> get localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> save(Object data, String path) async {
    final file = File(path);
    const jsonEncoder = JsonEncoder();
    return file.writeAsString(jsonEncoder.convert(data));
  }

  Future<Object> read(String path) async {
    try {
      final file = File(path);

      // Read the file
      final contents = await file.readAsString();

      return jsonDecode(contents);
    } catch (e) {
      print("[Debug] e in read: $e");
      // If encountering an error, return 0
      return 0;
    }
  }
}
