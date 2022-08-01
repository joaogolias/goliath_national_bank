class SpendingLimit {
  SepedingLimitType type;
  double value;

  SpendingLimit({this.type = SepedingLimitType.weekly, required this.value});
}

enum SepedingLimitType {
  weekly;

  static SepedingLimitType from(String value) {
    return SepedingLimitType.values
        .firstWhere((e) => e.toString() == 'Fruit.$value', orElse: () {
      return SepedingLimitType.weekly;
    });
  }
}
