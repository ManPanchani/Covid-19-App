class CovidCountries {
  final String country;
  final String continent;
  final String flag;
  final int population;
  final int todayCases;
  final int totalCases;
  final int activeCases;
  final int totalRecovered;
  final int totalDeaths;
  final int todayDeaths;

  CovidCountries({
    required this.country,
    required this.continent,
    required this.flag,
    required this.population,
    required this.todayCases,
    required this.totalCases,
    required this.activeCases,
    required this.totalRecovered,
    required this.totalDeaths,
    required this.todayDeaths,
  });

  factory CovidCountries.fromMap({required Map<String, dynamic> data}) {
    return CovidCountries(
      country: data['country'],
      continent: data['continent'],
      flag: data['countryInfo']['flag'],
      population: data['population'],
      todayCases: data['todayCases'],
      totalCases: data['cases'],
      activeCases: data['active'],
      totalRecovered: data['recovered'],
      totalDeaths: data['deaths'],
      todayDeaths: data['todayDeaths'],
    );
  }
}
