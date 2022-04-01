import 'package:barber_flutter/pages/onboard/onboard2.dart';
import 'package:barber_flutter/styles.dart';
import 'package:flutter/material.dart';

class Onboard01 extends StatelessWidget {
  const Onboard01({Key? key}) : super(key: key);

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
                    image: AssetImage('assets/onboard1.png'),
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
                              'Your Best Look',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: const Text(
                              'Explore and make your best style for your day!',
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
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Onboard02())),
                          child: const Icon(
                            Icons.chevron_right,
                            color: Colors.white,
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
                                  color: BarberStyles.mainPink,
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                            Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                  color: BarberStyles.mainPink,
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                            Container(
                              height: 12,
                              width: 12,
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
