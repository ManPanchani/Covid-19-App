import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/api_models.dart';

class CovidApiHelper {
  CovidApiHelper._();
  static final CovidApiHelper covidApiHelper = CovidApiHelper._();

  final String api = "https://disease.sh/v3/covid-19/";

  Future<List<CovidCountries>?> fetchCountriesData() async {
    String uri = "https://disease.sh/v3/covid-19/countries/";
    http.Response res = await http.get(Uri.parse(uri));
    if (res.statusCode == 200) {
      List decoData = jsonDecode(res.body);
      List<CovidCountries> covidCountries =
          decoData.map((e) => CovidCountries.fromMap(data: e)).toList();

      return covidCountries;
    }
    return null;
  }
}
