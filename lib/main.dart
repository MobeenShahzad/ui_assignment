import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'UI design',
      home: MyHomePage(title: 'Photographers'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      backgroundColor: Colors.grey,
      appBar: AppBar(


        leading: const Icon(

          Icons.menu,
          color: Colors.black,
          size: 30,
        ),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
        title: Center(
            child: Text(
              widget.title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            )),
        backgroundColor: Colors.white,
      ),
     body: Column (children:[
       Container(
           height: 520,
           width: double.infinity,
           decoration: const BoxDecoration(
               color: Colors.white,
               borderRadius:  BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
           ),
          child:ListView(

             children:[
                  Stack(

                    children:[

                      Padding(

                      padding: const EdgeInsets.all(30.0),


                      child: Container(



                        height: 400,
                        width: double.infinity,
                        decoration: const BoxDecoration(

                          borderRadius:  BorderRadius.all( Radius.circular(20)),

                          image: DecorationImage(
                            image: AssetImage('assets/christian-gertenbach-179213-unsplash.png'
                            ),
                            fit: BoxFit.cover,
                          ),



                        ),



                      ),
                    ),
                    Row(
                        children:[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius:  BorderRadius.all( Radius.circular(100))
                          ),



                        ),
                      ),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children:const [
                           Padding(
                             padding: EdgeInsets.only(bottom: 0),
                             child: Text('Cassian',style: TextStyle(
                               fontWeight: FontWeight.w700,

                             ),
                             ),
                           ),
                           Padding(
                             padding: EdgeInsets.only(bottom:25),
                             child: Text('@Cassian',style: TextStyle(
                               fontWeight: FontWeight.w900,
                               fontSize: 10,

                             ),
                             ),
                           ),

                         ]),


                    ]),
                     Row(
                         children:[
                       Padding(
                         padding: const EdgeInsets.only(top: 430.0,left: 30.0),
                         child: Container(
                           height: 20,
                           width: 20,
                           decoration: const BoxDecoration(
                               color: Colors.white,
                             image: DecorationImage(
                               image: AssetImage('assets/heart-line-1.png'
                               ),
                               fit: BoxFit.cover,
                             ),


                           ),


                         ),
                       ),

                     ]),
                    ]
                  ),






               Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Container(
                   height: 500,
                   width: double.infinity,
                   decoration: const BoxDecoration(
                       color: Colors.green,
                       borderRadius:  BorderRadius.all( Radius.circular(20))
                   ),


                 ),
               ),

             ]

         ),


         ),



       Padding(
         padding: const EdgeInsets.all(10.0),
         child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children:const

         [
           Icon(Icons.ac_unit,
             color: Colors.white,
             size: 40,
           ),
           Icon(Icons.ac_unit_rounded,
             color: Colors.white,
             size: 40,
           ),
           Icon(Icons.ac_unit_rounded,
             color: Colors.white,
             size: 40,
           ),
         ]),
       ),
       Padding(
         padding: const EdgeInsets.all(7.0),
         child: Container(
           height: 5, width: 130,
         decoration: BoxDecoration(
            color: Colors.white,
         borderRadius: BorderRadius.circular(50),

         ),
         ),
       ),

     ]
     ),





     );

  }
}
