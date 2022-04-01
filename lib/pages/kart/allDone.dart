import 'package:barber_flutter/pages/dashboard/dashboard.dart';
import 'package:barber_flutter/pages/login/login.dart';
import 'package:barber_flutter/pages/onboard/onboard1.dart';
import 'package:barber_flutter/styles.dart';
import 'package:flutter/material.dart';

class AllDonePage extends StatefulWidget {
  const AllDonePage({Key? key}) : super(key: key);
  @override
  State<AllDonePage> createState() => _AllDonePageState();
}

class _AllDonePageState extends State<AllDonePage> {
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
                    Container(width: 33,),
                    Container(
                      width: 42,
                    ),
                    Container(
                      height: 60,
                      child: const Image(
                        image: AssetImage('assets/profile.png'),
                        fit: BoxFit.contain,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: const Image(
                        image: AssetImage('assets/allDone.png'),
                      ),
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
