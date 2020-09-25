import 'package:convertor/networking.dart';
import 'constants.dart';

String getImage(int categoryIndex) {
  return 'images/${unitsData.keys.toList()[categoryIndex].toString().toLowerCase().replaceAll(' ', '_')}.png';
}

String getCategoryName(int categoryIndex) {
  return unitsData.keys.toList()[categoryIndex];
}

double getConversionRate(int categoryIndex, int unitIndex) {
  return unitsData[getCategoryName(categoryIndex)][unitIndex]['conversion'];
}

Future<List> getCurrenciesSymbols() async {
  Map data = await getOnlineData(url);
  Map symbols = data['symbols'];
  return symbols.keys.toList();
}
double calculate(
    int categoryIndex, int fromUnitIndex, int toUnitIndex, double value) {
  double fromConvRate = getConversionRate(categoryIndex, fromUnitIndex);
  double toConvRate = getConversionRate(categoryIndex, toUnitIndex);
  return (toConvRate / fromConvRate) * value;
}

Map unitsData = {
  "Length": [
    {"name": "Meter", "conversion": 1.0, "base_unit": true},
    {"name": "Millimeter", "conversion": 1000.0},
    {"name": "Centimeter", "conversion": 100.0},
    {"name": "Kilometer", "conversion": 0.001},
    {"name": "Inch", "conversion": 39.3701},
    {"name": "Foot", "conversion": 3.28084},
    {"name": "Yard", "conversion": 1.09361},
    {"name": "Mile", "conversion": 0.000621371}
  ],
  "Area": [
    {"name": "Meter squared", "conversion": 1.0, "base_unit": true},
    {"name": "Kilometer squared", "conversion": 0.000001},
    {"name": "Square inch", "conversion": 1550.0},
    {"name": "Square foot", "conversion": 10.7639},
    {"name": "Square yard", "conversion": 1.19599},
    {"name": "Acre", "conversion": 0.000247105},
    {"name": "Hectare", "conversion": 0.0001}
  ],
  "Volume": [
    {"name": "Cubic meter", "conversion": 1.0, "base_unit": true},
    {"name": "US legal cup", "conversion": 4166.67},
    {"name": "US fluid ounce", "conversion": 33814.0},
    {"name": "US tablespoon", "conversion": 67628.0},
    {"name": "US teaspoon", "conversion": 202884.0},
    {"name": "Imperial cup", "conversion": 3519.51},
    {"name": "Imperial fluid ounce", "conversion": 35195.1},
    {"name": "Imperial tablespoon", "conversion": 56312.13673},
    {"name": "Imperial teaspoon", "conversion": 168936.41019}
  ],
  "Mass": [
    {"name": "Kilogram", "conversion": 1.0, "base_unit": true},
    {"name": "Gram", "conversion": 1000.0},
    {"name": "Ounce", "conversion": 35.274},
    {"name": "Pound", "conversion": 2.20462},
    {"name": "Stone", "conversion": 0.157473},
    {"name": "US ton", "conversion": 0.00110231},
    {"name": "Metric ton", "conversion": 0.001}
  ],
  "Time": [
    {"name": "Second", "conversion": 1.0, "base_unit": true},
    {"name": "Millisecond", "conversion": 1000.0},
    {"name": "Minute", "conversion": 0.0166666666666667},
    {"name": "Hour", "conversion": 0.0002777777777778},
    {"name": "Day", "conversion": 0.00001157407407},
    {"name": "Week", "conversion": 0.000001653439153},
    {"name": "Fortnight", "conversion": 0.000000826719576}
  ],
  "Digital Storage": [
    {"name": "Megabyte", "conversion": 1.0, "base_unit": true},
    {"name": "Megabit", "conversion": 8.0},
    {"name": "Mebibyte", "conversion": 0.953674},
    {"name": "Byte", "conversion": 1000000.0},
    {"name": "Kilobyte", "conversion": 1000.0},
    {"name": "Gigabyte", "conversion": 0.001},
    {"name": "Terabyte", "conversion": 0.000001},
    {"name": "Petabyte", "conversion": 0.000000001}
  ],
  "Energy": [
    {"name": "Joule", "conversion": 1.0, "base_unit": true},
    {"name": "Kilojoule", "conversion": 0.001},
    {"name": "Gram calorie", "conversion": 0.239006},
    {"name": "Kilocalorie (Calorie)", "conversion": 0.000239006},
    {"name": "Watt hour", "conversion": 0.000277778},
    {"name": "British thermal unit", "conversion": 0.000947817},
    {"name": "US therm", "conversion": 0.0000000094804}
  ]
};
