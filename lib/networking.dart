import 'package:convertor/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void getOnlineData() async {
  var url = 'http://data.fixer.io/api/symbols?access_key=$kApiKey';

  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    print(jsonResponse);
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
