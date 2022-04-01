import 'package:barber_flutter/pages/dashboard/dashboard.dart';
import 'package:barber_flutter/pages/kart/allDone.dart';
import 'package:barber_flutter/pages/login/login.dart';
import 'package:barber_flutter/pages/onboard/onboard1.dart';
import 'package:barber_flutter/styles.dart';
import 'package:flutter/material.dart';

class KartPage extends StatefulWidget {
  const KartPage({Key? key}) : super(key: key);
  @override
  State<KartPage> createState() => _KartPageState();
}

class _KartPageState extends State<KartPage> {
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const AllDonePage(),
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
  Route _popRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const DashboardPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(-1.0, 0.0);
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
        backgroundColor: BarberStyles.mainBlack,
        body: Center(
          child: Column(
            children: [
              Container(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                         onPressed: () {
                          Navigator.of(context).push(_popRoute());
                        },
                        icon: const Icon(
                          Icons.chevron_left,
                          color: Colors.white,
                          size: 30,
                        )),
                    Container(
                      width: 42,
                    ),
                    Container(
                      height: 60,
                      child: const Image(
                        image: AssetImage('assets/profile.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 0.6,
                margin:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 45),
                color: Colors.white,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 60,
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(21)),
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Corte de Cabelo Simples',
                                    style: TextStyle(
                                      color: BarberStyles.mainBlack,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: const Text(
                                "R12,00",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: BarberStyles.mainBlack,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 60,
                      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(21)),
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Barba Completa',
                                    style: TextStyle(
                                      color: BarberStyles.mainBlack,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: const Text(
                                "R42,00",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: BarberStyles.mainBlack,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 54,
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                    color: BarberStyles.mainYellow,
                    borderRadius: BorderRadius.circular(8)),
                child: TextButton(
                   onPressed: () {
                          Navigator.of(context).push(_createRoute());
                        },
                  child: const Text(
                    'Finalizar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
