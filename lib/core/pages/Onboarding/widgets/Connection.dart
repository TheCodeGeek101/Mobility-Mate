import 'package:flutter/material.dart';
import 'package:mobility_mate/core/utils/Colors.dart';
import 'package:lottie/lottie.dart';
import 'package:mobility_mate/features/Authentication/Presentation/pages/SignIn.dart';

class ConnectionScreen extends StatelessWidget {
  const ConnectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: Constants.secondaryColor,
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              // Image.asset("assets/images/connected.jpg",height:300),
              Lottie.asset('assets/animations/animation4.json'),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal:20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text(
                          'Stay Connected and Supported',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                            height: 10
                        ),
                        Text(
                          'Mobility Mate keeps you connected. Reach out to your physiotherapist directly through the app for guidance, feedback, or a motivational boost. '
                              'Plus, automatic reminders help ensure you stay on track with your exercises, making your recovery journey smoother and more effective.'
                          ,
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        ButtonTheme(
                            height: 50,
                            minWidth:150,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white, // background
                                onPrimary: Constants.primaryColor, // foreground
                              ),
                              onPressed: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (_) => const SignIn()));
                              },
                              child: const Text('Get Started'),
                            )
                        )
                      ]
                  )
              ),
            ]
        )
    );
  }
}
