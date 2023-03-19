import 'package:flutter/material.dart';
import 'package:parcialeva2_2501762019_2508782019/pantallas/menu.dart';

void main() {
  runApp(parcialeva2());
}

class parcialeva2 extends StatelessWidget {
  const parcialeva2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Menu1(),
    );
  }
}
