import 'package:flutter/material.dart';
import 'package:flutter_state_management/gstore/global_state.dart';
import 'package:provider/provider.dart';
import './screens/home_screen.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
