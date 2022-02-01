import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:getx_project/controller/listcontroller.dart';

class ShowView extends StatefulWidget {
  //const ShowView({Key? key}) : super(key: key);

  @override
  _ShowViewState createState() => _ShowViewState();
}

class _ShowViewState extends State<ShowView> {
  var listController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    print(listController.userList.toString());
    return Container(
      child: Center(
        child: Text(""),
      ),
    );
  }
}
