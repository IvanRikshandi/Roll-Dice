import 'package:flutter/material.dart';
import 'dart:math';

class DaduBasic extends StatefulWidget {
  const DaduBasic({super.key});

  @override
  State<DaduBasic> createState() => _DaduBasicState();
}

class _DaduBasicState extends State<DaduBasic> {
  //untuk menetapkan roll pertama
  var currentDiceRoll = 2;

  // agar tidak menyimpan banyak di memori
  final acak = Random();

  void rollDice() {
    setState(() {
      currentDiceRoll = acak.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/dice-$currentDiceRoll.png',
              width: 200,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice,
              child: const Text(
                'Roll Dice',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
