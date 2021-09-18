import 'package:my_project/extensions/locale_keys.dart';
import 'package:easy_localization/easy_localization.dart';
import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:my_project/screens/getting_started_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: AppConstant.SUPPORTED_LOCALE,
      path: AppConstant.LANG_PATH,
      //fallbackLocale: Locale('en', 'US'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.deepPurple,
            accentColor: Colors.deepPurpleAccent),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: Scaffold(
          appBar: AppBar(
            title: Text("MyProject"),
            actions: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
              ),
              // IconButton(
              //   onPressed: () {},
              //   icon: Icon(Icons.search),
              // ),
              PopupMenuButton(
                icon: Icon(Icons.public),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text("EN"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text("TR"),
                    value: 2,
                  ),
                ],
                onSelected: (value) {
                  print(value);
                  if (value == 1) {
                    context.setLocale(AppConstant.EN_LOCALE);
                  } else if (value == 2) {
                    context.setLocale(AppConstant.TR_LOCALE);
                  }
                  //else {
                  //   context.setLocale(AppConstant.TR_LOCALE);
                  // }
                },
              ),
            ],
          ),
          body: GettingStartedScreen(),
        ));
  }
}
