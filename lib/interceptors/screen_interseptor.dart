import 'package:firebase_auth_project/features/home/screens/home_screen.dart';
import 'package:firebase_auth_project/features/login/screens/login_screen.dart';
import 'package:firebase_auth_project/services/auth_service.dart';
import 'package:flutter/material.dart';

class ScreenInterceptor extends StatefulWidget {
  const ScreenInterceptor({super.key});

  @override
  State<ScreenInterceptor> createState() => _ScreenInterceptorState();
}

class _ScreenInterceptorState extends State<ScreenInterceptor> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().authStateChanges,
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          return HomeScreen();
        } else {
          return LoginScreen();
        }
      }),
    );
  }
}
