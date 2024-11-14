import 'package:flutter/material.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();



}

class _MyAppState extends State<MyApp> {
  var wtController=TextEditingController();
  var ftController=TextEditingController();
  var itController=TextEditingController();

  String result=" ";

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
               const SizedBox(
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
                const SizedBox(
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
                const SizedBox(
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
                  var wt=wtController.text.toString();
                  var ft=ftController.text.toString();
                  var inch=itController.text.toString();


                  if(wt!="" && ft!="" && inch!=""){

                    var iWt=int.parse(wt);
                    var iFt=int.parse(ft);
                    var iInch=int.parse(inch);

                    var tInch=(iFt*12)+iInch;

                    var tCm=tInch*2.54;

                    var tM=tCm/100;

                    var bmi=iWt/(tM*tM);

                    result="Your BMI is: ${bmi.toStringAsFixed(2)}";

                  }

                  else{
                    setState(() {
                      result="Please fill all the required blanks!!";
                    });
                  }
                },
                    child:const Text('Calculate:') ),
                    Text(result, style: const TextStyle(fontSize: 20),),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
