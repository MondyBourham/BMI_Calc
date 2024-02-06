// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class BMI_Result extends StatelessWidget {
  final bool isMale ;
  final int age ;
  final int result ;

  const BMI_Result({super.key,
    required this.isMale,
    required this.result,
    required this.age,

  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title :
        const Text(
          "BMI Result",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              " Gender : ${isMale? "Male" : " Female" } ",style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
            ),
            Text(
              " Result : $result ",style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
            ),
            Text(
              " Age : $age ",style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
            ),

          ],
        ),
      ),
    );
  }
}
