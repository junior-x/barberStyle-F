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
                        Image(image: AssetImage('assets/profile.png'), fit: BoxFit.contain,),
                        Text('juniorx')
                      ],),),
                      Container(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
