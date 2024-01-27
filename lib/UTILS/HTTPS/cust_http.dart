import 'dart:convert';
import 'package:http/http.dart' as http;

class CustHttp {
  static const String _baseURL = '';

  // *****Helper Method to make ""GET"" Request

  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseURL/$endpoint'));
    return _handleResponse(response);
  }

  // *****Helper Method to make ""POST"" Request

  static Future<Map<String, dynamic>> post(
      String endpoint, dynamic postdata) async {
    final response = await http.post(
      Uri.parse('$_baseURL/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(postdata),
    );
    return _handleResponse(response);
  }
  // *****Helper Method to make ""PUT"" Request

  static Future<Map<String, dynamic>> put(
      String endpoint, dynamic putdata) async {
    final response = await http.put(
      Uri.parse('$_baseURL/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(putdata),
    );
    return _handleResponse(response);
  }
  // *****Helper Method to make ""DELETE"" Request

  static Future<Map<String, dynamic>> delete(String endpoint) async {
    final response = await http.delete(Uri.parse('$_baseURL/$endpoint'));
    return _handleResponse(response);
  }

  // *******Handle the Http response

  static Map<String, dynamic> _handleResponse(http.Response res) {
    if (res.statusCode == 200 || res.statusCode == 201) {
      try {
        final jsondata = jsonDecode(res.body);
        return jsondata;
      } catch (_) {
        throw Exception('Server responded with something other than JSON');
      }
    } else {
      throw Exception(
          'Server responded with error code: ${res.statusCode}, message: ${res.body}');
    }
  }
}
