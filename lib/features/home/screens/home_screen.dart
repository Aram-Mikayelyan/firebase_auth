import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_project/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final User? currentUser = AuthService().currentUser;

  Future<void> signout() async {
    AuthService().signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(currentUser!.email!),
              const Gap(20),
              ElevatedButton(onPressed: signout, child: const Text('Sign Out'))
            ],
          ),
        ),
      ),
    );
  }
}
