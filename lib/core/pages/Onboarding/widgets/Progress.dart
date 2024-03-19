import 'package:flutter/material.dart';
import 'package:mobility_mate/core/utils/Colors.dart';

class ProgressScreen extends StatelessWidget {
  ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Constants.primaryColor,
      //   decoration: BoxDecoration(
      //       gradient: LinearGradient(
      //         begin: Alignment.topLeft,
      //         end: Alignment.bottomRight,
      //         colors:[Colors.white,Constants.primaryColor],
      //       )
      //   ),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Image.asset("assets/images/progress.png",height:300),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal:20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text(
                          'Track Your Progress',
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
                          'Stay motivated and informed with real-time progress tracking. With Mobility Mate, you can easily log your exercises, monitor your improvements, and'
                              ' visualize your journey towards better mobility and health. Watch as every effort brings you one step closer to your goals!'
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
                                primary: Constants.secondaryColor, // background
                                onPrimary: Colors.black, // foreground
                              ),
                              onPressed: () {
                                // Navigator.pushReplacement(context,
                                //     MaterialPageRoute(builder: (_) => const SignIn()));
                              },
                              child: const Text('Skip'),
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
