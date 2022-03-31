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
                          'Explore and make your best style for your day!',textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ),
                      Container(),
                      Container(),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
