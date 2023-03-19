import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 550,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.4, 74, 0.12, 80],
            colors: [
              Color.fromARGB(255, 101, 1, 38),
              Color.fromARGB(130, 101, 1, 38),
              Color.fromARGB(143, 101, 1, 38),
              Color.fromARGB(255, 101, 1, 38),
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 35),
            Image.asset(
              "assets/tecno.png",
              width: 143,
            ),
            Text(
              'Parcial 2 -ETPS3!',
              style: TextStyle(
                color: Color.fromARGB(255, 246, 246, 247),
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Bryan Josue Hernandez Flores - 2501762019',
              style: TextStyle(
                color: Color.fromARGB(255, 237, 237, 237),
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              '25-0176-2019',
              style: TextStyle(
                color: Color.fromARGB(255, 237, 237, 237),
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Cristian Alexander Palma Molina - 2508782019',
              style: TextStyle(
                color: Color.fromARGB(255, 237, 237, 237),
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              '25-0878-2019',
              style: TextStyle(
                color: Color.fromARGB(255, 237, 237, 237),
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 15),
            Text(
              '18/03/2023!',
              style: TextStyle(
                color: Color.fromARGB(255, 238, 238, 238),
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
