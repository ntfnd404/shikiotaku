/// Config for app.
abstract final class Config {
  // --- API --- //

  /// Base url for api.
  /// e.g. https://domain.tld
  static const String apiBaseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'https://domain.tld',
  );
}
