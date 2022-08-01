import 'package:goliath_national_bank/data/file_system/full_data_storage.dart';
import 'package:goliath_national_bank/data/model/financial_education/spending_limit.dart';

class FinancialEducationDS {
  final FullDataStorage fullDataStorage = FullDataStorage();

  Future<SpendingLimit?> getSpedingLimit() async {
    dynamic fullData = await fullDataStorage.read();
    dynamic spendingLimit = fullData["financialEducation"]["spendingLimit"];

    if (spendingLimit == null) {
      return Future.value(null);
    }

    SpendingLimit limit =
        SpendingLimit(value: double.parse(spendingLimit["value"]));

    if (spendingLimit["type"]) {
      limit.type = SepedingLimitType.from(spendingLimit["type"]);
    }

    // TODO: Improve mapping JSON to class
    // https://stackoverflow.com/questions/45189282/mapping-json-into-class-objects

    return limit;
  }
}
