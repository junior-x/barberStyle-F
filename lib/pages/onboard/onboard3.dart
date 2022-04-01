import 'package:barber_flutter/styles.dart';
import 'package:flutter/material.dart';


import 'package:barber_flutter/pages/dashboard/dashboard.dart';

class Onboard03 extends StatelessWidget {
  const Onboard03({Key? key}) : super(key: key);

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const DashboardPage(),
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
                  color: BarberStyles.mainPink,
                  padding: const EdgeInsets.only(top: 36),
                  child: const Image(
                    image: AssetImage('assets/onboard3.png'),
                    fit: BoxFit.cover,
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
                          Container(
                            child: const Text(
                              'Tudo Pronto!  :)',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: const Text(
                              'Você está pronto para começar. ',
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
                            Icons.check,
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
