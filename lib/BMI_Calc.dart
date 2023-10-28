import 'dart:math';

import 'package:app006/BMI_result.dart';
import 'package:flutter/material.dart';

class BMICalc extends StatefulWidget {
  const BMICalc({super.key});

  @override
  State<BMICalc> createState() => _BMICalcState();
}

class _BMICalcState extends State<BMICalc> {
  double sliderHeightValue = 120;
  bool isMale = true;
  double age = 20;
  double weight = 40;
  double result = -1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATER')),
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 36, 36, 36),
      ),
      body: Container(
        color: const Color.fromARGB(255, 36, 36, 36),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, top: 10.0, right: 5.0, left: 10.0),
                        child: Container(
                          width: 100,
                          height: 200,
                          color: isMale
                              ? Colors.pink
                              : const Color.fromARGB(255, 51, 51, 51),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 90,
                                color: Colors.white,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(
                                    fontSize: 26, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, top: 10.0, right: 10.0, left: 5.0),
                        child: Container(
                          color: !isMale
                              ? Colors.pink
                              : const Color.fromARGB(255, 51, 51, 51),
                          width: 100,
                          height: 200,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 90,
                                color: Colors.white,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(
                                    fontSize: 26, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: const Color.fromARGB(255, 51, 51, 51),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'HEIGHT',
                            style: TextStyle(
                              fontSize: 26,
                              color: Color.fromRGBO(126, 125, 125, 1),
                            ),
                          ),
                          Container(
                            height: 50,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  sliderHeightValue.round().toString(),
                                  style: const TextStyle(
                                      fontSize: 50,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  'cm',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Color.fromRGBO(126, 125, 125, 1),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 300,
                            child: Slider(
                                activeColor: Colors.pink,
                                inactiveColor: Colors.white,
                                thumbColor: Colors.pink,
                                value: sliderHeightValue,
                                min: 30,
                                max: 220,
                                onChanged: (value) {
                                  setState(() {
                                    sliderHeightValue = value;
                                  });
                                  print(value.round());
                                }),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10.0, top: 10.0, right: 5.0, left: 10.0),
                      child: Container(
                        width: 100,
                        height: 200,
                        color: const Color.fromARGB(255, 51, 51, 51),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'WEIGHT',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Color.fromRGBO(126, 125, 125, 1)),
                            ),
                            Text(
                              weight.round().toString(),
                              style: const TextStyle(
                                  fontSize: 42,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(1.0),
                                  decoration: const BoxDecoration(
                                    color: Colors.pink,
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        weight = (weight + 1) % 150;
                                      });
                                    },
                                    icon: const Icon(Icons.add,
                                        size: 30, color: Colors.white),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  padding: const EdgeInsets.all(1.0),
                                  decoration: const BoxDecoration(
                                    color: Colors.pink,
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        weight = (weight - 1) % 150;
                                      });
                                    },
                                    icon: const Icon(Icons.remove,
                                        size: 30, color: Colors.white),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10.0, top: 10.0, right: 10.0, left: 5.0),
                      child: Container(
                        width: 100,
                        height: 200,
                        color: const Color.fromARGB(255, 51, 51, 51),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'AGE',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Color.fromRGBO(126, 125, 125, 1)),
                            ),
                            Text(
                              age.round().toString(),
                              style: const TextStyle(
                                  fontSize: 42,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(1.0),
                                  decoration: const BoxDecoration(
                                    color: Colors.pink,
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        age = (age + 1) % 100;
                                      });
                                    },
                                    icon: const Icon(Icons.add,
                                        size: 30, color: Colors.white),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  padding: const EdgeInsets.all(1.0),
                                  decoration: const BoxDecoration(
                                    color: Colors.pink,
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        age = (age - 1) % 100;
                                      });
                                    },
                                    icon: const Icon(Icons.remove,
                                        size: 30, color: Colors.white),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                child: Center(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        result = weight / pow(sliderHeightValue / 100, 2);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BMIResult(result)));
                        print(result.toString());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text(
                        'CALCULATE',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
