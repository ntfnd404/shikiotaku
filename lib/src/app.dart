import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shikiotaku/src/common/localization/localization.dart';

/// {@template app}
/// App widget.
/// {@endtemplate}
class App extends StatelessWidget {
  /// {@macro app}
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShikiOtaku',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const <LocalizationsDelegate<Object?>>[
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        Localization.delegate,
      ],
      supportedLocales: Localization.supportedLocales,
      locale: const Locale('ru', 'RU'),
      builder: (context, child) {
        if (!kDebugMode) {
          ErrorWidget.builder = (FlutterErrorDetails details) => Center(
                child: Text('Error\n${details.exceptionAsString()}'),
              );
        }

        /// fix high textScaleFactor
        final MediaQueryData mediaQuery = MediaQuery.of(context);
        final double scale =
            mediaQuery.textScaleFactor.clamp(0.8, 1).toDouble();

        return MediaQuery(
          data: mediaQuery.copyWith(textScaleFactor: scale),
          child: child ?? const SizedBox.shrink(),
          // child: WindowScope(
          //   title: Localization.of(context).title,
          //   child: AuthenticationScope(
          //     signInScreen: const SignInScreen(),
          //     child: child ?? const SizedBox.shrink(),
          //   ),
          // ),
        );
      },
      home: const Scaffold(
        body: Center(
          child: Text("I'am unstoppable!"),
        ),
      ),
    );
  }
}
