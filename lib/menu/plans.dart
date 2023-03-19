import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:parcialeva2_2501762019_2508782019/Json/comida.dart';
import 'package:parcialeva2_2501762019_2508782019/temas/colors.dart';

class plans extends StatefulWidget {
  const plans({super.key});

  @override
  State<plans> createState() => _plansState();
}

class _plansState extends State<plans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
      backgroundColor: bgColor,
      title: Row(
        children: [
          Text("BD24K",
              style: TextStyle(
                  fontSize: 16, color: primario, fontWeight: FontWeight.w500))
        ],
      ),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.menu,
                    color: primario,
                    weight: 700,
                  ),
                  Text(
                    "Plans",
                    style: TextStyle(
                        fontSize: 23,
                        color: blaco,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
        Container(
          height: 40,
          width: double.infinity,
          child: Center(
            child: Text("Form Datos Card Credit",
                style: TextStyle(
                    fontSize: 34, color: blaco, fontWeight: FontWeight.w700)),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55.0),
              child: Container(
                height: 38,
                decoration: BoxDecoration(
                  color: cajaTexto,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  autofocus: true,
                  style: TextStyle(color: blaco),
                  cursorColor: primario,
                  decoration: InputDecoration(
                      prefixIcon:
                          Icon(LineIcons.user, color: blaco.withOpacity(0.3)),
                      border: InputBorder.none,
                      hintText: "Digite Nombre",
                      hintStyle: TextStyle(color: blaco, fontSize: 18)),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55.0),
              child: Container(
                height: 38,
                decoration: BoxDecoration(
                  color: cajaTexto,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  autofocus: true,
                  style: TextStyle(color: blaco),
                  cursorColor: primario,
                  decoration: InputDecoration(
                      prefixIcon: Icon(LineIcons.userFriends,
                          color: blaco.withOpacity(0.3)),
                      border: InputBorder.none,
                      hintText: "Digite Apellido",
                      hintStyle: TextStyle(color: blaco, fontSize: 18)),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55.0),
              child: Container(
                height: 38,
                decoration: BoxDecoration(
                  color: cajaTexto,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  autofocus: true,
                  style: TextStyle(color: blaco),
                  cursorColor: primario,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.call_to_action_rounded,
                          color: blaco.withOpacity(0.3)),
                      border: InputBorder.none,
                      hintText: "Digite numero de Tarjeta",
                      hintStyle: TextStyle(color: blaco, fontSize: 18)),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55.0),
              child: Container(
                height: 38,
                decoration: BoxDecoration(
                  color: cajaTexto,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  autofocus: true,
                  style: TextStyle(color: blaco),
                  cursorColor: primario,
                  decoration: InputDecoration(
                      prefixIcon: Icon(LineIcons.calendarAlt,
                          color: blaco.withOpacity(0.3)),
                      border: InputBorder.none,
                      hintText: "Digite Fecha Vencimiento",
                      hintStyle: TextStyle(color: blaco, fontSize: 18)),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55.0),
              child: Container(
                height: 38,
                decoration: BoxDecoration(
                  color: cajaTexto,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  autofocus: true,
                  style: TextStyle(color: blaco),
                  cursorColor: primario,
                  decoration: InputDecoration(
                      prefixIcon:
                          Icon(LineIcons.lock, color: blaco.withOpacity(0.3)),
                      border: InputBorder.none,
                      hintText: "Digite SVC",
                      hintStyle: TextStyle(color: blaco, fontSize: 18)),
                ),
              ),
            ),
            SizedBox(height: 25),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 5.0,
              minWidth: 200.0,
              height: 45,
              color: Color.fromARGB(255, 104, 149, 6),
              onPressed: () {},
              splashColor: Color.fromARGB(255, 0, 68, 36),
              child: Text('Ingresar', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 15),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 5.0,
              minWidth: 200.0,
              height: 45,
              color: Color.fromARGB(255, 182, 18, 18),
              onPressed: () {},
              splashColor: Color.fromARGB(255, 248, 135, 135),
              child: Text('Cancelar', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ],
    );
  }
}
