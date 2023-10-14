import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futter_architecture_cubit/ui/widgets/user_list_cubit.dart';
import 'package:futter_architecture_cubit/user_list_page.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => UserListCubit()..fatchUsers()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const UserListPage(),
    );
  }
}
