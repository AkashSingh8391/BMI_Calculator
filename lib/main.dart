import 'package:flutter/material.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  var wtController=TextEditingController();
  var ftController=TextEditingController();
  var itController=TextEditingController();

}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var ftController;
    var itController;
    var wtController;
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar: AppBar(
          title:const Text('Your BMI'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('BMI',style: TextStyle(
                  fontSize: 34,
                ),),
                SizedBox(
                  height: 21,
                ),
                TextField(
                   decoration: const InputDecoration(
                    label: Text('Enter your weight(in kg)'),
                    prefixIcon: Icon(Icons.line_weight,),

                  ),
                    controller:wtController,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 21,
                ),
                TextField(
                  controller:ftController,
                  decoration: const InputDecoration(
                    label: Text('Enter your height(in feet)'),
                    prefixIcon: Icon(Icons.height,),

                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 21,
                ),
                TextField(
                  controller:itController,
                  decoration: const InputDecoration(
                    label: Text('Enter your height(in inches)'),
                    prefixIcon: Icon(Icons.height_rounded,),

                  ),
                  keyboardType: TextInputType.number,
                ),

                SizedBox(
                  height: 21,
                ),

                ElevatedButton(onPressed: (){

                },
                    child:Text('Calculate:') ),
                Text(''),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
