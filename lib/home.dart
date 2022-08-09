import 'package:flutter/material.dart';
import 'package:skin_care/result.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = true;
  int age = 22;
  double height = 160.0;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(
          "اختبار الصحة",
          style: Theme.of(context).textTheme.headline2,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () => setState(() {
                    isMale = true;
                  }),
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.white70),
                      color: isMale
                          ? Theme.of(context).colorScheme.secondary
                          : Colors.blueGrey,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.male,
                          color: Colors.white70,
                          size: 30,
                        ),
                        Text(
                          "ذكر",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ],
                    ),
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white70),
                        color: !isMale
                            ? Theme.of(context).colorScheme.secondary
                            : Colors.blueGrey),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.female,
                          color: Colors.white70,
                          size: 30,
                        ),
                        Text(
                          "انثى",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ],
                    ),
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.white70),
                color: Colors.blueGrey,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "الطول",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    "${height.round()}",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Slider(
                    inactiveColor: Colors.white24,
                    thumbColor: Colors.white,
                    label: "${height.round()}",
                    value: height,
                    onChanged: (val) {
                      setState(() {
                        height = val;
                      });
                    },
                    min: 140,
                    max: 200,
                    divisions: 60,
                    activeColor: Theme.of(context).colorScheme.onPrimary,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white70),
                    color: Colors.blueGrey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "الوزن",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Text(
                        "$weight",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FloatingActionButton(
                            heroTag: "w--",
                            mini: true,
                            backgroundColor: Colors.teal,
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            child: const Icon(Icons.remove),
                          ),
                          FloatingActionButton(
                            heroTag: "w++",
                            mini: true,
                            backgroundColor: Colors.teal,
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            child: const Icon(Icons.add),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white70),
                    color: Colors.blueGrey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "العمر",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Text(
                        "$age",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FloatingActionButton(
                            heroTag: "a--",
                            mini: true,
                            backgroundColor: Colors.teal,
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            child: const Icon(Icons.remove),
                          ),
                          FloatingActionButton(
                            heroTag: "a++",
                            mini: true,
                            backgroundColor: Colors.teal,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            child: const Icon(Icons.add),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  double result = 0.0;
                  var h = height / 100;
                  result = weight / (h * h);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) =>
                              Result(isMale, weight, age, height, result)));
                },
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "حساب",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white70)),
                ),
              ))
        ],
      ),
    ));
  }
}
