import 'package:flutter/material.dart';

class BMIResult extends StatefulWidget {
  BMIResult(double this.result, {super.key});
  final double result;

  @override
  State<BMIResult> createState() => _BMIResultState();
}

class _BMIResultState extends State<BMIResult> {
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
        // leading: Icon(Icons.arrow_back),
      ),
      body: Container(
        color: const Color.fromARGB(255, 36, 36, 36),
        child: Column(
          children: [
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
                            'RESULT',
                            style: TextStyle(
                              fontSize: 26,
                              color: Color.fromRGBO(126, 125, 125, 1),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  widget.result.round().toString(),
                                  style: const TextStyle(
                                      fontSize: 50,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  'BMI',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Color.fromRGBO(126, 125, 125, 1),
                                  ),
                                )
                              ],
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
    );
  }
}
