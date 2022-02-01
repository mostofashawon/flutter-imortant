import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_project/hrm_practice/userprofile.dart';


class HR extends StatefulWidget {
  const HR({Key? key}) : super(key: key);

  @override
  _HRState createState() => _HRState();
}

class _HRState extends State<HR> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          floatingActionButton: Padding(
            padding: EdgeInsets.only(right: 25, bottom: 45),
            child: FloatingActionButton(
              elevation: 15,
              backgroundColor: Colors.green,
              onPressed: () {
              },
              child: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                },
              ),
            ),
          ),
          // ),
          appBar: AppBar(
            title: Text("Leave Request"),
            centerTitle: true,
            leading: Icon(Icons.arrow_back),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 20),
                  ),
                  Container(
                    height: 82,
                    width: 115,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent[100],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 18,
                        ),
                        Text(
                          '3/12',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text('Anual Leaves',
                            style: TextStyle(
                              fontSize: 12,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Container(
                    height: 82,
                    width: 115,
                    decoration: BoxDecoration(
                      color: Colors.lightGreen[300],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 18,
                        ),
                        Text(
                          '2/5',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text('Medical Leaves',
                            style: TextStyle(
                              fontSize: 12,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Container(
                    height: 82,
                    width: 115,
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent[100],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 18,
                        ),
                        Text(
                          '1/5',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text('Casual Leaves',
                            style: TextStyle(
                              fontSize: 12,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 60),
                  ),
                  Text(
                    'Leave Request Info',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Expanded(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      hint: Text(
                        "This Year",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      items: <String>['2022', '2021', '2020', '2019']
                          .map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 18),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  color: Colors.grey[200],
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'From',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 95,
                      ),
                      Text(
                        'To',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 95,
                      ),
                      Text(
                        'Status',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 18, top: 5),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  color: Colors.grey[100],
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '18 Jan,19',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Text(
                        '18 Jan,19',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Text(
                        'Approved',
                        style: TextStyle(color: Colors.green),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit_rounded),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Divider(
                  height: 5,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 18,
                ),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  color: Colors.grey[100],
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '18 Jan,19',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Text(
                        '18 Jan,19',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Text(
                        'Rejected',
                        style: TextStyle(color: Colors.redAccent),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit_rounded),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Divider(
                  height: 5,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 18, top: 5),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  color: Colors.grey[100],
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '18 Jan,19',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Text(
                        '18 Jan,19',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Text(
                        'Pending',
                        style: TextStyle(color: Colors.deepOrange),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit_rounded),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Divider(
                  height: 5,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 18, top: 5),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  color: Colors.grey[100],
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '18 Jan,19',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Text(
                        '18 Jan,19',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Text(
                        'Pending',
                        style: TextStyle(color: Colors.deepOrange),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit_rounded),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Divider(
                  height: 5,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 18, top: 5),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  color: Colors.grey[100],
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '18 Jan,19',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Text(
                        '18 Jan,19',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Text(
                        'Pending',
                        style: TextStyle(color: Colors.deepOrange),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit_rounded),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Divider(
                  height: 5,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 18, top: 5),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  color: Colors.grey[100],
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '18 Jan,19',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Text(
                        '18 Jan,19',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Text(
                        'Pending',
                        style: TextStyle(color: Colors.deepOrange),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit_rounded),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Divider(
                  height: 5,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 18, top: 5),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  color: Colors.grey[100],
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '18 Jan,19',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Text(
                        '18 Jan,19',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Text(
                        'Pending',
                        style: TextStyle(color: Colors.deepOrange),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit_rounded),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
