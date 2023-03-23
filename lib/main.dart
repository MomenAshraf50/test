import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobtest/features/video/presentation/controller/cubit.dart';
import 'package:jobtest/features/video/presentation/screens/video_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black
      ),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      home: BlocProvider(
        create: (context) => AppCubit(),
        child: const VideoScreen(),
      ),
    );
  }
}

