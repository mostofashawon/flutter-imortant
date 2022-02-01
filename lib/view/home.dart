import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:getx_project/apiservice/apiservice.dart';
import 'package:getx_project/controller/listcontroller.dart';

class HomeView extends StatefulWidget {
  // const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var listController = Get.put(UserController());
  var data;

  @override
  Widget build(BuildContext context) {
    print(ApiService.fetchDataFromNetwork());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('User list'),
          centerTitle: true,
        ),
        body: Obx(() {
            if (listController.isLoading.value) {
              return const Center(
                  child: CircularProgressIndicator(
                color: Colors.black87,
              ));
            } else {
               return
                 FutureBuilder(
                 future: listController.fetchData(),
                 builder: (BuildContext context,AsyncSnapshot snapshot){
                    if(snapshot.hasData){
                      data = snapshot.data;
                    }
                    return Text(data.toString());
                   // return ListView.builder(
                   //     itemBuilder: (context,index){
                   //       return ListTile(
                   //         title: Text(),
                   //         subtitle: Text(listController.userList[index].address.geo.lng.toString()),
                   //       );
                   //     });
                 },
               //    ListView.builder(
               //      itemCount: listController.userList.length,
               //      itemBuilder: (context, index) {
               //        return ListTile(
               //          title: Text(listController.userList[index].address.city.toString()),
               //          subtitle: Text(listController.userList[index].address.geo.lng.toString()),
               //        );
               //      }),
                );
            }
          },
        ),
      ),
    );
  }
}
