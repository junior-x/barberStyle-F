import 'package:barber_flutter/styles.dart';
import 'package:flutter/material.dart';

import 'package:barber_flutter/pages/onboard/onboard3.dart';

class Onboard02 extends StatelessWidget {
  const Onboard02({Key? key}) : super(key: key);

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const Onboard03(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.only(top: 36),
                  child: const Image(
                    image: AssetImage('assets/onboard2.png'),
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 36,
                                width: 120,
                                margin: const EdgeInsets.only(left: 27, bottom: 16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: BarberStyles.mainBlack),
                                child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Homem',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ),
                              Container(
                                height: 36,
                                width: 120,
                                margin: const EdgeInsets.only(right: 27, bottom: 16),
                                decoration: BoxDecoration(
                                  border: Border.all(color: BarberStyles.mainBlack),
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white),
                                child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Mulher',
                                      style: TextStyle(color: BarberStyles.mainBlack),
                                    )),
                              ),
                              
                            ],
                          ),
                          Container(
                            child: const Text(
                              'Bem Vindo',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: const Text(
                              'Deixe o seu perfil do jeitinho que achar melhor',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                            color: BarberStyles.mainPurple,
                            borderRadius: BorderRadius.circular(90)),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(_createRoute());
                          },
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 45,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 251, 144, 171),
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                            Container(
                              height: 12,
                              width: 45,
                              decoration: BoxDecoration(
                                  color: BarberStyles.mainPink,
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                            Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 251, 144, 171),
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
