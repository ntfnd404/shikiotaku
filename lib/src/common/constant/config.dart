/// Config for app.
abstract final class Config {
  // --- API --- //

  /// Environment flavor.
  /// e.g. development, staging, production
  // static final EnvironmentFlavor environment =
  //     EnvironmentFlavor.from(const String.fromEnvironment('ENVIRONMENT', defaultValue: 'development'));

  /// Base url for api.
  /// e.g. https://domain.tld
  static const String apiBaseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'https://domain.tld',
  );

  /// Timeout in milliseconds for opening url.
  /// [Dio] will throw the [DioException] with [DioExceptionType.connectTimeout] type when time out.
  /// e.g. 15000
  static const Duration apiConnectTimeout = Duration(
    milliseconds: int.fromEnvironment(
      'API_CONNECT_TIMEOUT',
      defaultValue: 15000,
    ),
  );

  /// Timeout in milliseconds for receiving data from url.
  /// [Dio] will throw the [DioException] with [DioExceptionType.receiveTimeout] type when time out.
  /// e.g. 10000
  static const Duration apiReceiveTimeout = Duration(
    milliseconds: int.fromEnvironment(
      'API_RECEIVE_TIMEOUT',
      defaultValue: 10000,
    ),
  );
}
