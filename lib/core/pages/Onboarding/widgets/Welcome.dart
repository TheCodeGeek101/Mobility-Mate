import 'package:flutter/material.dart';
import 'package:mobility_mate/core/utils/Colors.dart';
import 'package:lottie/lottie.dart';
class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
        color: Constants.secondaryColor,
        // decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       begin: Alignment.topLeft,
        //       end: Alignment.bottomRight,
        //       colors: [Colors.white, Constants.primaryColor],
        //     )
        // ),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Lottie.asset('assets/animations/animation1.json'),
              // Image.asset("assets/images/exercise3.jpg",height:300),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal:20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text(
                          'Welcome to Mobility Mate!',
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
                          'Welcome to Mobility Mate, your personal companion on the journey to enhanced physical health and mobility. Whether you\'re'
                              ' recovering from an injury, working to improve your physical condition, or maintaining your wellness, '
                              'Mobility Mate is here to support you every step of the way.'
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
                              primary: Constants.primaryColor, // background
                              onPrimary: Colors.white, // foreground
                            ),
                            onPressed: () {
                              // Navigator.pushReplacement(context,
                              //     MaterialPageRoute(builder: (_) => const SignIn()));
                            },
                            child: const Text('Skip'),
                          ),
                        ),
                        SizedBox(
                            height:20
                        ),
                        Center(child: Text('Swipe left to continue...',style:TextStyle(color:Colors.white))),
                        SizedBox(
                            height:20
                        ),
                        Row(
                          children: const [
                            Expanded(child: Divider()),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text('Mobility Mate', style:TextStyle(color:Colors.white))),
                            Expanded(child: Divider()),
                          ],
                        ),
                        SizedBox(height:20),
                        GestureDetector(
                          onTap: () {

                          },
                          child: Center(
                            child: Text.rich(
                              TextSpan(children: [
                                TextSpan(
                                  text: 'Powered by ',
                                  style: TextStyle(
                                    color: Constants.primaryColor,
                                  ),
                                ),
                                TextSpan(
                                  text: 'techbythembinkosi.com',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ),
                      ]
                  )
              ),
            ]
        )
    );
  }
}
