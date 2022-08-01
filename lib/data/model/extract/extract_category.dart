import 'package:goliath_national_bank/extensions/string.dart';

class ExtractCategory {
  late String id;
  late String intlLabel;
  String label;

  ExtractCategory({required this.label}) {
    id = label.removeDiacritics();
  }
}
