import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  _PracticeState createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
            //  Image.asset('blank-profile-picture-973460_1280.wepb'),
              CircleAvatar(
                // radius: 48,
                 backgroundImage: AssetImage('assets/images/bus.png'),
              ),

              Container(
                width: 100.0,
                height: 150.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                     image: AssetImage('assets/images/bus.png'),
                    // borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    //  color: Colors.redAccent,
                ),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
              )
              )
            ],
          ),
        ),
      ),
    );
  }
}
