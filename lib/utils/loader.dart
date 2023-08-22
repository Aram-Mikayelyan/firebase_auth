import 'package:flutter/material.dart';

Future<void> showLoader(BuildContext context) async {
  showDialog(
      context: context,
      builder: (_) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      });
}
