import 'package:flutter/material.dart';
import "dart:math";
import 'package:random_password_generator/random_password_generator.dart';

import 'mock_data.dart';

class GeneratorScreen extends StatefulWidget {
  @override
  State<GeneratorScreen> createState() => _GeneratorScreenState();
}

class _GeneratorScreenState extends State<GeneratorScreen> {
  final password = RandomPasswordGenerator();


  @override
  Widget build(BuildContext context) {
    String fIO = listFIO[Random().nextInt(listFIO.length)];
    String login = password.randomPassword(
        letters: true, uppercase: false, numbers: false, specialChar: false);
    String newPassword = password.randomPassword(
        letters: true,
        uppercase: true,
        numbers: true,
        specialChar: true,
        passwordLength: 12);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ФИО: ' + fIO, style: const TextStyle(color: Colors.white)),
              const SizedBox(height: 15),
              Text('Login:   user_' + login,
                  style: const TextStyle(color: Colors.white)),
              const SizedBox(height: 15),
              Text('Password: ' + newPassword,
                  style: const TextStyle(color: Colors.white)),
              const SizedBox(height: 15),
              MaterialButton(
                color: Colors.greenAccent,
                onPressed: () {
                  setState(() {});
                },
                child: const Text(
                  'Сгенерировать',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
