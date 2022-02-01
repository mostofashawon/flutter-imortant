import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
              body: Container(
        height: double.infinity,
        child: Stack(children: [
          Container(
              height: 200,
              width: double.infinity,
              color: Colors.green,
              child: Stack(
                children: [
                  IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.view_headline_outlined),
                    onPressed: () {},
                  ),
                  Positioned(
                    top: 12,
                    left: 150,
                    child: Text(
                      'DashBoard',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Positioned(
                      //  top: 10,
                      right: 55,
                      child: IconButton(
                        iconSize: 30,
                        color: Colors.white,
                        icon: Icon(Icons.mail_outline_outlined),
                        onPressed: () {},
                      )),
                  Positioned(
                      top: -1,
                      right: 10,
                      child: IconButton(
                        iconSize: 28,
                        color: Colors.white,
                        icon: Icon(Icons.doorbell),
                        onPressed: () {},
                      ))
                ],
              )),
          Positioned(
            left: 20,
            right: 20,
            top: 65,
            child: Container(
              // color: Colors.white,
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.white30,
                  offset: Offset(0.0, 0.73),
                ),
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 0.73),
                )
              ]),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 15),
                          child: CircleAvatar(
                              radius: 30, // Image radius
                              backgroundImage:
                                  AssetImage('assets/images/Capture.PNG')),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Alex Boland',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Sr. Content Manager',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(height: 60, width: 25),
                        Text(
                          'Emp Code :',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Expanded(child: Container()),
                        SizedBox(
                          height: 60,
                        ),
                        Text(
                          'NAF2436',
                          style: TextStyle(color: Colors.black87),
                        ),
                        SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 25),
                        Text(
                          'Email :',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Expanded(child: Container()),
                        //  SizedBox(height: 60,),
                        Text(
                          'digitalworldemploee@.com',
                          style: TextStyle(color: Colors.black87),
                        ),
                        SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      children: [
                        SizedBox(width: 25),
                        Text(
                          'Reporting Manager :',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Expanded(child: Container()),
                        //  SizedBox(height: 60,),
                        Text(
                          'Tom Carry',
                          style: TextStyle(color: Colors.black87),
                        ),
                        SizedBox(
                          width: 15,
                        )
                      ],
                    )
                  ]),
            ),
          ),
          Positioned(
            left: 85,
            bottom: 350,
            child: Column(
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/CaptureA.PNG'),
                          fit: BoxFit.fill),
                      color: Colors.transparent,
                      shape: BoxShape.circle),
                ),
                SizedBox(height: 15),
                Text(
                  'Attendence',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          Positioned(
            left: 85,
            bottom: 200,
            child: Column(
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/CaptureC.PNG',
                        ),
                        fit: BoxFit.fill),
                    color: Colors.purpleAccent[100],
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Traning',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          Positioned(
            right: 85,
            bottom: 350,
            child: Column(
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/CaptureB.PNG'),
                          fit: BoxFit.fill),
                      color: Colors.grey,
                      shape: BoxShape.circle),
                ),
                SizedBox(height: 15),
                Text(
                  'Leave Request',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          Positioned(
            right: 85,
            bottom: 200,
            child: Column(
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/CaptureD.PNG'),
                        fit: BoxFit.fill),
                    color: Colors.purpleAccent[100],
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Sarary',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        ]),
      ))),
    );
  }
}
