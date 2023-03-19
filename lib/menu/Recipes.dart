import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:parcialeva2_2501762019_2508782019/Json/comida.dart';
import 'package:parcialeva2_2501762019_2508782019/temas/colors.dart';
import 'package:animate_do/animate_do.dart';

class Recipes extends StatefulWidget {
  const Recipes({super.key});

  @override
  State<Recipes> createState() => _comidaState();
}

class _comidaState extends State<Recipes> {
  @override
  int MenuActivo = 0;
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
      centerTitle: true,
      leading: IconButton(
        icon: Text(
          "BD24K",
          style: TextStyle(
              fontSize: 14, color: primario, fontWeight: FontWeight.w500),
        ),
        onPressed: null,
      ),
    );
  }

  Widget getBody() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Icon(
                    Icons.food_bank_outlined,
                    color: primario,
                    weight: 700,
                  ),
                  Text(
                    "Food",
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
              Container(
                height: 38,
                decoration: BoxDecoration(
                  color: cajaTexto,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  style: TextStyle(color: blaco),
                  cursorColor: primario,
                  decoration: InputDecoration(
                      prefixIcon:
                          Icon(LineIcons.search, color: blaco.withOpacity(0.3)),
                      border: InputBorder.none,
                      hintText: "Busqueda de comida",
                      hintStyle: TextStyle(
                          color: blaco.withOpacity(0.3), fontSize: 24)),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      MenuActivo == 0 ? getLlamadas() : getLlamadasPerdidas()
                    ],
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget getLlamadas() {
    var tamanio = MediaQuery.of(context).size;
    return Column(
      children: List.generate(comidad.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: FadeInDown(
            duration: Duration(milliseconds: 100 * index),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 60,
                      child: Row(children: [
                        Container(
                          width: 65,
                          height: 125,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(comidad[index]['img']),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          // width: (tamanio.width - 100) * 0.4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                comidad[index]['name'],
                                style: TextStyle(
                                    fontSize: 18,
                                    color: blaco,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                            ],
                          ),
                        )
                      ]),
                    ),
                    Container(
                      width: 150,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.monetization_on,
                              color: primario,
                            ),
                            Text(
                              comidad[index]['Price'],
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: blaco.withOpacity(0.5)),
                            ),
                          ]),
                    ),
                  ],
                ),
                Text(
                  '----------------------',
                  style: TextStyle(
                    color: Color.fromARGB(255, 246, 246, 247),
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget getLlamadasPerdidas() {
    return Container();
  }
}
