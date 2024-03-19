import 'package:flutter/material.dart';
import 'package:mobility_mate/core/utils/Colors.dart';

class Exercise extends StatelessWidget {
  Exercise({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: Constants.primaryColor,
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Image.asset("assets/images/exercise4.jpg",height:300),

              Padding(
                  padding: EdgeInsets.symmetric(horizontal:20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text(
                          'Personalized Exercise Programs',
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
                          'Say goodbye to one-size-fits-all exercise plans. At Mobility Mate, we believe in personalization. '
                              'Our platform enables your physiotherapist to create customized exercise programs that cater to your unique needs and goals,'
                              ' ensuring a more effective and enjoyable path to recovery and wellness.'
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
