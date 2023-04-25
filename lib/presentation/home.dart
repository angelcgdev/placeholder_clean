import 'package:flutter/material.dart';
import 'package:placeholder_clean/domain/models/user.dart';
import 'package:placeholder_clean/domain/repositories/user_interface_reapository.dart';
import 'package:placeholder_clean/presentation/home_controller.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage._();

  static Widget init(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) =>
          UserController(userService: context.read<UserInterfaceInterface>()),
      child: const HomePage._(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final contoller = context.read<UserController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(children: [
        Expanded(
          child: FutureBuilder(
            future: contoller.getUsers(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.done:
                  final data = snapshot.data!;
                  return ListView.separated(
                    separatorBuilder: (context, index) => const Divider(
                        color: Color.fromARGB(115, 129, 129, 129)),
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return _User(
                        data: data[index],
                      );
                    },
                  );
                default:
                  return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        )
      ]),
    );
  }
}

class _User extends StatelessWidget {
  const _User({super.key, required this.data});
  final User data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(data.name),
        ],
      ),
    );
  }
}
