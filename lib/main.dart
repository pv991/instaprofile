import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int like = 0;
  int commnets=0;
  int share = 0;
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',

      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Color(0xDD000000),
          title: Text("Instagram picture demo",
              style: TextStyle(fontFamily: 'Merienda-Bold', fontSize: 25),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: double.infinity,
                  //color: Colors.red,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: Image.asset("assets/images/img_5.png"),
                      ),
                      SizedBox(width: 9,),
                      Text("Varun ", style: TextStyle(
                          fontFamily:'Merienda-Bold',
                          fontSize: 21,
                          fontWeight: FontWeight.w500

                      ),)
                    ],
                  )),
              SizedBox(height: 15,),
              // Container(
              //   height: 450,
              //    width: 261,
              //   child:
              //
              //     Image.asset("assets/images/img_6.png"),
              // ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/img_6.png',
                  height: 445.0,
                  width: 360.0,

                  fit: BoxFit.fill,
                ),
              ),

              SizedBox(height:23, ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap: (){
                              setState(() {
                                like++;
                              });

                            },
                            child: Image.asset("assets/images/img_1.png",  height: 30,)),
                        SizedBox(width: 5,),
                        Text("$like Likes"),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        InkWell(
                            onTap: (){
                              setState(() {
                                commnets++;
                              });

                            },
                            child: Image.asset("assets/images/img_2.png",  height: 30,)),
                        SizedBox(width: 5,),
                        Text("$commnets Comments"),
                      ],
                    ),
                  ),

                  Container(
                    child: Row(
                      children: [
                        InkWell(
                            onTap: (){
                              setState(() {
                                share++;
                              });

                            },
                            child: Image.asset("assets/images/img_3.png",  height: 30,)),
                        SizedBox(width: 5,),
                        Text("$share Share"),
                      ],
                    ),
                  ),



                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}