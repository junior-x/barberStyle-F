import 'package:barber_flutter/pages/dashboard/dashboard.dart';
import 'package:barber_flutter/pages/onboard/onboard1.dart';
import 'package:barber_flutter/styles.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BarberStyles.mainBlack,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Container(
                height: MediaQuery.of(context).size.height * 0.5,
                padding: const EdgeInsets.all(36),
                child: const Image(
                  image: AssetImage('assets/logo.png'),
                  fit: BoxFit.fitHeight,
                )),
            Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 60,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        color: BarberStyles.mainPurple,
                        borderRadius: BorderRadius.circular(30)),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Onboard01()),
                        );
                      },
                      child: const Text(
                        'LogIn',
                        style: TextStyle(
                          color: BarberStyles.mainBlack,
                          fontSize: 21,
                        ),
                      ),
                    )),
                Container(
                  height: 30,
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 60,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        border: Border.all(color: BarberStyles.mainYellow),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'LogIn',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                        ),
                      ),
                    )),
              ],
            ),
            Container(
             
            ),
          ],
        ),
      ),
    );
  }
}
