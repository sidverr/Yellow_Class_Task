import 'package:flutter/material.dart';
import 'package:yellow_final/transaction.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:yellow_final/TransactionPage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(TransactionAdapter());
  await Hive.openBox<Transaction>('transaction');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = "Movies";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: TransactionPage(),
    );
  }
}
