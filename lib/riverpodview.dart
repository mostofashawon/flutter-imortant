import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:getx_project/clickchange.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


import 'clickstate.dart';

//final greetingProvider = Provider<String>((ref) => "Hello World");
final clickProvider = StateProvider<int>(
    (ref) => 0
);

final clickNotifierProvider = ChangeNotifierProvider<ClickChangeNotifier>(
    (ref) => ClickChangeNotifier() ) ;

final clickStateProvider = StateNotifierProvider<ClickStateChange,int>((ref) => ClickStateChange(0));

final futureProvider = FutureProvider<String> (
    (ref) async {
      var response =  await http.get(Uri.parse('https://api.publicapis.org/entries'));
      var responseString = json.decode(response.body);
      return  responseString.toString();
    }
);


class RiverpodView extends ConsumerWidget {
  // const RiverpodView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
 //   var greeting = ref.watch(greetingProvider);
    var increment = ref.watch(clickStateProvider);
    var future = ref.watch(futureProvider);
    return Scaffold(body: Container(
      color: Colors.brown,
        child: Center(
          //child: Text(increment.toString()),
          child: future.when(
              data: (value) =>Text(value),
              error: (error,str) => Text(error.toString()),
              loading: ()=> CircularProgressIndicator()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // ref.read(clickProvider.notifier).state++;
          ref.read(clickStateProvider.notifier).increment();
        },
      ),
    );
  }
}
