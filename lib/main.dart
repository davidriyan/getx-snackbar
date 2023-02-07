import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

//MEMBUAT CLASS BARU BERNAMA HOMEPAGE
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('get snackbar'),
      ),
      body: SafeArea(
        child: Center(
            child: ElevatedButton(
                onPressed: () {
                  /*
                  sebelum kita menggunakan statemanagement getx
                  kita biasa membuat snacbar seperti ini
                  
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('data'),
                    action: SnackBarAction(label: 'cancel', onPressed: () {}),
                  ));
                  */
                  //sebenarnya ada cara yang paling mudah, yaitu dengan menggunakan getx
                  //yakni seperti ini
                  Get.snackbar('hello', 'message',
                      margin: EdgeInsets.all(20),
                      dismissDirection: DismissDirection.horizontal,
                      backgroundColor: Colors.amber,
                      snackPosition: SnackPosition.BOTTOM);
                },
                child: Text('On Tap'))),
      ),
    );
  }
}
