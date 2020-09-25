import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

dynamic getOnlineData(String url) async {
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    return jsonResponse;
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
