enum CurrencyType {
  REAL,
  DOLAR,
  EURO,
  BITCOIN,
}

class CurrencyModel {
  final CurrencyType name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  CurrencyModel({
    required this.name,
    required this.real,
    required this.dolar,
    required this.euro,
    required this.bitcoin,
  });

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
        name: CurrencyType.REAL,
        real: 1.0,
        dolar: 0.18,
        euro: 0.15,
        bitcoin: 0.000016,
      ),
      CurrencyModel(
        name: CurrencyType.DOLAR,
        real: 5.65,
        dolar: 1.0,
        euro: 0.85,
        bitcoin: 0.000088,
      ),
      CurrencyModel(
        name: CurrencyType.EURO,
        real: 6.62,
        dolar: 1.17,
        euro: 1.0,
        bitcoin: 0.00010,
      ),
      CurrencyModel(
          name: CurrencyType.BITCOIN,
          real: 64116.51,
          dolar: 11351.30,
          euro: 9689.54,
          bitcoin: 1),
    ];
  }
}
