import 'package:flutter/material.dart';
import 'home.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async{
    await Future.delayed(Duration(milliseconds: 6000), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     // backgroundColor: Colors.red,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/test_background_1.jpg"),
            fit: BoxFit.cover,
          )
        ),
        child: Center(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                Column(
                  children: [
                    Text(
                      "WallArt",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 45
                      ),
                    ),
                    Text(
                      "Gallery",
                      style: TextStyle(
                          color: Colors.red[100],
                          fontWeight: FontWeight.bold,
                          fontSize: 50
                      ),
                    ),
                  ],
                ),

               // CircularProgressIndicator(),
                SpinKitSpinningLines(
                  size: 120,
                  color: Colors.white,
                ),

                Column(
                  children: [
                    Text(
                      "Developed by Dinindu Chamikara",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'RobotoMono',
                          fontStyle: FontStyle.italic,
                          fontSize: 15,
                      ),
                    ),
                  ]
                ),
              ],
            )
        )
      ),
    );

  }
}

