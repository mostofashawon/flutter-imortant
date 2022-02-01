import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:getx_project/apiservice/apiservice.dart';
import 'package:getx_project/model/data.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  var isLoading = true.obs;
  var userList = <Data>[];
  //var data;
  //late var user ;

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  Future<List<Data>?> fetchData() async {
    var getList;
    try {
      isLoading(true);
      getList = await ApiService.fetchDataFromNetwork();
      if (getList != null) {
        // userList.assignAll(getList);
      //  userList = getList ;
       // print(userList.toString());
        userList = getList;
      }
    } finally {
      isLoading(false);
    }
    return userList;
   }
  }
