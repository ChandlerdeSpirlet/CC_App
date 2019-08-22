import 'package:http/http.dart'  as http;
import 'dart:convert';
import '../models/bb.dart';

Future<Stream<BlackBelt>> getBB() async {
  final String url = 'https://classcounts.herokuapp.com/data';
  final client = new http.Client();
  final streamedRest = await client.send(
    http.Request('get', Uri.parse(url))
  );

  return streamedRest.stream
    .transform(utf8.decoder)
    .transform(json.decoder)
    .expand((data) => (data as List))
    .map((data) => BlackBelt.fromJson(data));
}