import 'package:flutter/material.dart';
import 'package:placeholder_clean/data/repositires/user_interface_impl.dart';
import 'package:placeholder_clean/domain/repositories/user_interface_reapository.dart';
import 'package:placeholder_clean/presentation/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<UserInterfaceInterface>(
            create: (_) => UserInterfaceInterfaceImpl()),
      ],
      builder: (context, child) {
        return MaterialApp(
          home: HomePage.init(context),
          theme: ThemeData.light().copyWith(useMaterial3: true),
        );
      },
    );
  }
}
