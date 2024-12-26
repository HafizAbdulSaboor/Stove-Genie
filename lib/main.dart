import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stove_genie/pages/home/presentation/screen/home_screen.dart';
import 'package:stove_genie/pages/sign_up/presentation/provider/check_box_provider.dart';
import 'package:stove_genie/pages/sign_up/presentation/screen/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CheckBoxProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SignUpScreen(),
      ),
    );
  }
}
