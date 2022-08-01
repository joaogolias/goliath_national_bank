import 'package:flutter/material.dart';
import 'package:goliath_national_bank/data/file_system/full_data_storage.dart';
import 'package:goliath_national_bank/routes/home/home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void startFile() async {
    // TODO: Isolate this function in other place
    try {
      final FullDataStorage fullDataStorage = FullDataStorage();
      dynamic data = await fullDataStorage.read();
      print('[Debug] reding file');

      if (data != 0) {
        print('[Debug] saving file');
        fullDataStorage.save(data);
      }
    } catch (e) {
      print("[Debug] e in read: $e");
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    startFile();
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('pt', ''), // Portuguese, no country code
      ],
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomeRoute(title: 'Flutter Demo Home Page'),
    );
  }
}
