import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:todo_cycle8_sat/home_layout/home_layout.dart';
import 'package:todo_cycle8_sat/pages/splash_page/splage_page.dart';
import 'package:todo_cycle8_sat/providers/settings_provider.dart';
import 'package:todo_cycle8_sat/shared_components/theme/my_theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      themeMode: ThemeMode.light,
      initialRoute: SplashPage.routeName,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.currentLanguage),
      routes: {
        SplashPage.routeName: (context) => SplashPage(),
        HomeLayout.routeName: (context) => HomeLayout(),
      },
    );
  }
}
