// ignore_for_file: file_names

import 'dart:math';

import 'package:bmi/Componants/Result.dart';
import 'package:flutter/material.dart';

class BMI extends StatefulWidget{
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI>
{
  bool isMale = true ;
  double height = 150;
  int age = 20 ;
  int weight = 70 ;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(


          backgroundColor: Colors.black,

          title:
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(
              'BMI Calacultor' , style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
            ),],
          )


      ),
      body:
      Column(


        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(()
                        {
                          isMale = true ;
                        });

                      },
                      child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale ? Colors.purple : Colors.black,
                        ),

                        child: Column(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.male,
                              color: isMale ? Colors.white : Colors.purple,
                              size: 70.0,),
                            const SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'MALE',style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: isMale ? Colors.white : Colors.purple,
                            ),),
                          ],

                        ),
                      ),
                    ), // male
                  ),
                  const SizedBox(
                    width: 29.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          isMale = false ;
                        });
                      },
                      child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: !isMale ? Colors.purple : Colors.black,

                        ),

                        child: Column(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.female,
                              color: !isMale ? Colors.white : Colors.purple,
                              size: 70.0,),
                            const SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'FEMALE',style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: !isMale ? Colors.white : Colors.purple,
                            ),),
                          ],

                        ),
                      ),
                    ), //female
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.black,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${height.round()}',style: const TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.purple,
                        ),),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Text(
                          'Cm',style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                        ),),

                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Slider(

                        activeColor: Colors.purple,
                        inactiveColor: Colors.purple[200],
                        value: height ,
                        max: 220.0,
                        min : 80.0,

                        onChanged: (value){
                          setState(() {
                            height = value ;
                          });
                        } )

                  ],





                ),
              ),// height
            ),
          ), // slider
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.black,

                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                          ),),
                          Text(
                            '$age',style: const TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.purple,
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  onPressed:(){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  backgroundColor: Colors.purple,
                                  foregroundColor: Colors.black,
                                  heroTag: 'age -' ,
                                  mini: true,
                                  child : const Icon(
                                    Icons.remove,
                                  )
                              ),
                              FloatingActionButton(
                                  onPressed:(){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  backgroundColor: Colors.purple,
                                  foregroundColor: Colors.black,
                                  heroTag: 'age+',
                                  mini: true,
                                  child : const Icon(
                                    Icons.add,
                                  )
                              ),

                            ],
                          ),//buttoms
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.black,

                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Weight',style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                          ),),
                          Text(
                            '$weight',style: const TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.purple,
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  onPressed:()
                                  {
                                    setState(()
                                    {
                                      weight -- ;

                                    });
                                  },
                                  backgroundColor: Colors.purple,
                                  foregroundColor: Colors.black,
                                  heroTag: "weight - ",
                                  mini: true,
                                  child : const Icon(
                                    Icons.remove,

                                  )
                              ),
                              FloatingActionButton(
                                  onPressed:(){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  backgroundColor: Colors.purple,
                                  foregroundColor: Colors.black,
                                  heroTag: "wegjit +",
                                  mini: true,
                                  child : const Icon(
                                    Icons.add,
                                  )
                              ),

                            ],
                          ),//buttoms
                        ],
                      ),
                    ),
                  ),

                ],




              ),
            ),
          ), // weight & age
          Container(
            width: double.infinity,
            color: Colors.black,

            child: MaterialButton(onPressed: ()
            {
              var result = weight / pow(height/100, 2);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)=>BMI_Result(
                    isMale: isMale ,
                    result: result.round(),
                    age: age,
                  ) ,
                ),
              );
            },
              height: 50.0,
              child: const Text('CALCULATE' , style:  TextStyle(
                fontSize: 25.0,
                color: Colors.purple,

              ),)
              ,),
          ), //calc buttom

        ],
      ),
    );
  }
}