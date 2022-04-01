import 'package:barber_flutter/styles.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: BarberStyles.mainBlack,
        body: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                  Container(
                    child: Column(
                      children: const [
                        Image(
                          image: AssetImage('assets/profile.png'),
                          fit: BoxFit.contain,
                        ),
                        Text(
                          'juniorx',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(),
                ],
              ),
              Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 0.6,
                    margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 45),
                    color: Colors.white,
                  ),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
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
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 100,
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(21)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 100,
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(21)),
                    ),
              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                    color: BarberStyles.mainYellow,
                    borderRadius: BorderRadius.circular(90)),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shop,
                    color: BarberStyles.mainBlack,
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
