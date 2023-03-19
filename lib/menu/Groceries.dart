import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:parcialeva2_2501762019_2508782019/temas/colors.dart';

import '../Json/comida.dart';

class groceries extends StatefulWidget {
  const groceries({super.key});

  @override
  State<groceries> createState() => _groceriesState();
}

class _groceriesState extends State<groceries> {
  @override
  int MenuActivo = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      //appBar: getAppBar(),
      body: getBody(),
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
                    Icons.local_grocery_store_outlined,
                    color: blaco,
                  ),
                  Text(
                    "Groceries",
                    style: TextStyle(
                        fontSize: 23,
                        color: blaco,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 12, right: 5, left: 5),
                        child: Divider(color: blaco.withOpacity(0.3)),
                      ),
                      Text(
                        "Mexican Food",
                        style: TextStyle(
                            fontSize: 22,
                            color: blaco.withOpacity(0.5),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 2, right: 5, left: 5),
                        child: Divider(color: blaco.withOpacity(0.3)),
                      ),
                      MenuActivo == 0 ? getMexican() : getLlamadasPerdidas()
                    ],
                  ),
                ],
              ),

              //Bebidas
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 12, right: 5, left: 5),
                        child: Divider(color: blaco.withOpacity(0.3)),
                      ),
                      Text(
                        "Bebidas",
                        style: TextStyle(
                            fontSize: 22,
                            color: blaco.withOpacity(0.5),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 2, right: 5, left: 5),
                        child: Divider(color: blaco.withOpacity(0.3)),
                      ),
                      MenuActivo == 0 ? getDrinks() : getLlamadasPerdidas()
                    ],
                  ),
                ],
              ),

              //Comidas
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 30, right: 5, left: 5),
                        child: Divider(color: blaco.withOpacity(0.3)),
                      ),
                      Text(
                        "American Food",
                        style: TextStyle(
                            fontSize: 22,
                            color: blaco.withOpacity(0.5),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1, right: 5, left: 5),
                        child: Divider(color: blaco.withOpacity(0.3)),
                      ),
                      MenuActivo == 0 ? getFoods() : getLlamadasPerdidas()
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

  Widget getDrinks() {
    var tamanio = MediaQuery.of(context).size;
    return Column(
      children: List.generate(drink.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
          child: FadeInDown(
            duration: Duration(milliseconds: 100 * index),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      // width: (tamanio.width - 30) * 0.4,
                      child: Row(children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(drink[index]['img']),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          // width: (tamanio.width - 100) * 0.4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                drink[index]['name'],
                                style: TextStyle(
                                    fontSize: 16,
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
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget getFoods() {
    var tamanio = MediaQuery.of(context).size;
    return Column(
      children: List.generate(americaFood.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
          child: FadeInDown(
            duration: Duration(milliseconds: 100 * index),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      // width: (tamanio.width - 30) * 0.4,
                      child: Row(children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      NetworkImage(americaFood[index]['img']),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          // width: (tamanio.width - 100) * 0.4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                americaFood[index]['name'],
                                style: TextStyle(
                                    fontSize: 16,
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
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget getMexican() {
    var tamanio = MediaQuery.of(context).size;
    return Column(
      children: List.generate(drink.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
          child: FadeInDown(
            duration: Duration(milliseconds: 100 * index),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      // width: (tamanio.width - 30) * 0.4,
                      child: Row(children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      NetworkImage(MexicanFood[index]['img']),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          // width: (tamanio.width - 100) * 0.4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                MexicanFood[index]['name'],
                                style: TextStyle(
                                    fontSize: 16,
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
                  ],
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
