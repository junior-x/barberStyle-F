import 'package:barber_flutter/pages/login/login.dart';
import 'package:barber_flutter/pages/onboard/onboard1.dart';
import 'package:barber_flutter/styles.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Onboard01(),
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
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage())),
                        icon: const Icon(
                          Icons.logout,
                          color: Colors.white,
                          size: 30,
                        )),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            child: const Image(
                              image: AssetImage('assets/profile.png'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          const Text(
                            'juniorx',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 42,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 100,
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(21)),
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  child: const Image(
                                    image: AssetImage('assets/logo.png'),
                                    fit: BoxFit.contain,
                                  ),
                                )),
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Haircut',
                                    style: TextStyle(
                                      color: BarberStyles.mainBlack,
                                      fontSize: 24,
                                    ),
                                  ),
                                  Text(
                                    'Edges, shapes and some cream for the skin.',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                color: BarberStyles.mainPurple,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 39,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 100,
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(21)),
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  child: const Image(
                                    image: AssetImage('assets/logo.png'),
                                    fit: BoxFit.contain,
                                  ),
                                )),
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Hairwashing',
                                    style: TextStyle(
                                      color: BarberStyles.mainBlack,
                                      fontSize: 24,
                                    ),
                                  ),
                                  Text(
                                    'Edges, shapes and some cream for the skin.',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: BarberStyles.mainPurple,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 39,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 100,
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(21)),
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  child: const Image(
                                    image: AssetImage('assets/logo.png'),
                                    fit: BoxFit.contain,
                                  ),
                                )),
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Beard Trimming',
                                    style: TextStyle(
                                      color: BarberStyles.mainBlack,
                                      fontSize: 24,
                                    ),
                                  ),
                                  Text(
                                    'Edges, shapes and some cream for the skin.',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                color: BarberStyles.mainPurple,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 39,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 54,
                      height: 54,
                      margin: const EdgeInsets.only(bottom: 16),
                      decoration: BoxDecoration(
                          color: BarberStyles.mainYellow,
                          borderRadius: BorderRadius.circular(90)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.local_offer,
                          color: BarberStyles.mainBlack,
                          size: 39,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
