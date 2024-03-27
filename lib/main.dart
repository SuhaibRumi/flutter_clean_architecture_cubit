
import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futter_architecture_cubit/data/rest_api_users_repository.dart';


final getIt = GetIt.instance;

void main() {
  getIt.registerSingleton<UserRepository>(RestApiUsersRepository());
  runApp(MultiBlocProvider(providers: [
    BlocProvider(
        create: (context) => UserListCubit(
              getIt(),
            )..fatchUsers()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Cubit',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const UserListPage(),
    );
  }
}