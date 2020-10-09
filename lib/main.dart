import 'package:doctor_consultant_mobile_app/views/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'helpers/theme.dart';
import 'providers/theme_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(
          builder: (context,theme, snapshot) {
            return MaterialApp(
              title: 'Doctor Consultant',
              debugShowCheckedModeBanner: false,
              theme: themeData(context),
              darkTheme: darkThemeData(context),
              themeMode: theme.isLightTheme ?  ThemeMode.dark:ThemeMode.light ,
              home: Home(),
            );
          }
      ),
    );
  }
}
