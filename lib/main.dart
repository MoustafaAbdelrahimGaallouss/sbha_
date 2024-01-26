// تطبيق السبحة مع وضعين (لا نهائي /33 فقط)
//fluttter Stste ful Widget project Start point

//     بسم الله الرحمن الرحيم   
  
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget{

 // ignore: prefer_const_constructors_in_immutables
 MyApp({super.key});
 @override
  State<MyApp> createState ()=> _MyAppState();

}
class _MyAppState extends State<MyApp> {
  int sobhanAllh=0, hamdAllah=0, alahaqber=0;
  bool infintay=true,only33=false;
@override
  Widget build(BuildContext context) {

    return MaterialApp(
         debugShowCheckedModeBanner:false,
      home: Scaffold(
        
        appBar: AppBar( 
          
          title: const Center(child: Text("بسم الله الرحمن الرحيم ",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
          )),
        ),
        // drawer: const Drawer(),
        body: Container( 
          padding:const EdgeInsets.all(30) ,
          child:  Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(   //    Only33
                      color:Colors.black
                      ,onPressed: (){
                      setState(() {
                        only33=true;
                        infintay=false;
                         sobhanAllh=hamdAllah=alahaqber=0;
                      });
                    },
                    child: const Text("33فقط ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:Colors.amber
                    ),
                    ),
                    ),
                    MaterialButton(// infintay
                      color:Colors.black
                      ,onPressed: (){
                      setState(() {
                        infintay=true;
                        only33=false;
                        sobhanAllh=hamdAllah=alahaqber=0;
                      });
                    },
                    child: const Text("لا نهائي",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:Colors.amber
                    ),
                    ),)
                  ],
                ),
                Column(  //سبحان اللّه"
                  children: [
                    Text("$sobhanAllh",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                  
                    MaterialButton(color: const Color.fromARGB(255, 255, 192, 2),onPressed: (){
                      setState(() {
                        if(only33){
                          if(sobhanAllh<33){
                          sobhanAllh++;
                        }
                        }
                         else if(infintay){
                          if(sobhanAllh<=33000000){
                          sobhanAllh++;
                        }
                        }
                      });  
                    }, child:   const Text("سبحان اللّه",
                style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color:Color.fromARGB(255, 7, 72, 129)
                ) ,
                ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                  Column(  //الحمد اللّه
                  children: [
                    Text("$hamdAllah",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                   
              
                    MaterialButton(color: const Color.fromARGB(255, 255, 192, 2),onPressed: (){
                      setState(() {
                        if (only33) {
                      if(sobhanAllh==33 && hamdAllah<33 ){ 
                        hamdAllah++;
                           }
                       }
                       else if(infintay){
                        if(hamdAllah<=330000000){
                          hamdAllah++;
                        }
                       }
                      });  
                    }, child:  const Text("الحمد اللّه",
                style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color:Color.fromARGB(255, 7, 72, 129)
                ) ,
                ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(  //اللّه اكبر"
                  children: [
                    Text("$alahaqber",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                    
              
                    MaterialButton(color: const Color.fromARGB(255, 255, 192, 2),onPressed: (){
                      setState(() {
                        
                        if(only33){
                         if(hamdAllah==33 && alahaqber<33){
                          alahaqber++;
                        }
                        }
                         else if(infintay){
                          if(alahaqber<=33000000){
                          alahaqber++;
                        }
                        }
                      });  
                    }, child: const Text("اللّه اكبر",
                style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color:Color.fromARGB(255, 7, 72, 129)
                ) ,
                ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
               
                MaterialButton( //تصفير 
                      color: const Color.fromARGB(255, 7, 7, 7),
                      minWidth: 150,
                      height: 20,
                      textColor: Colors.white
                      ,onPressed: (){
                      setState(() {
                        sobhanAllh=0;hamdAllah=0;alahaqber=0;
                      });  
                    }, child: const Text("تصفير ",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    ),
                    ),
                    const SizedBox(
                  height: 200,
                ),
                const Text("Flutter Developer : Moustafa Abdel-Rahim",
                style: TextStyle(
                  color: Color.fromARGB(255, 55, 42, 4)
                ),)
                /////////////////////////////
                  ],
            ),
          ),
        ),
        //////////////////////////////////////
        ),
    );
  }
}

//  💙الحمد لله 