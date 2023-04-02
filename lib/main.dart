// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange,
          title: const Text(
            "Takipçim",
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: SingleChildScrollView(
          child: Yapilacaklar(),
        ),
      ),
    );
  }
}

class Yapilacaklar extends StatefulWidget {
  const Yapilacaklar({super.key});

  @override
  State<Yapilacaklar> createState() => _YapilacaklarState();
}

class _YapilacaklarState extends State<Yapilacaklar> {
  bool task_1 = false;
  bool task_2 = false;
  bool task_3 = false;
  bool task_4 = false;
  bool task_5 = false;
  bool task_6 = false;
  bool task_7 = false;
  bool task_8 = false;
  bool task_9 = false;
  bool task_0 = false;

  String text_1 = "";
  String text_2 = "";
  String text_3 = "";
  String text_4 = "";
  String text_5 = "";
  String text_6 = "";
  String text_7 = "";
  String text_8 = "";
  String text_9 = "";
  String text_0 = "";

  TextEditingController controller_1 = TextEditingController();
  TextEditingController controller_2 = TextEditingController();
  TextEditingController controller_3 = TextEditingController();
  TextEditingController controller_4 = TextEditingController();
  TextEditingController controller_5 = TextEditingController();
  TextEditingController controller_6 = TextEditingController();
  TextEditingController controller_7 = TextEditingController();
  TextEditingController controller_8 = TextEditingController();
  TextEditingController controller_9 = TextEditingController();
  TextEditingController controller_0 = TextEditingController();

  getData() async {
    var sharedPrefs = await SharedPreferences.getInstance();

    setState(() {
      task_1 = sharedPrefs.getBool("task_1") ?? false;
      task_2 = sharedPrefs.getBool("task_2") ?? false;
      task_3 = sharedPrefs.getBool("task_3") ?? false;
      task_4 = sharedPrefs.getBool("task_4") ?? false;
      task_5 = sharedPrefs.getBool("task_5") ?? false;
      task_6 = sharedPrefs.getBool("task_6") ?? false;
      task_7 = sharedPrefs.getBool("task_7") ?? false;
      task_8 = sharedPrefs.getBool("task_8") ?? false;
      task_9 = sharedPrefs.getBool("task_9") ?? false;
      task_0 = sharedPrefs.getBool("task_0") ?? false;

      text_1 = sharedPrefs.getString("text_1") ?? "";
      text_2 = sharedPrefs.getString("text_2") ?? "";
      text_3 = sharedPrefs.getString("text_3") ?? "";
      text_4 = sharedPrefs.getString("text_4") ?? "";
      text_5 = sharedPrefs.getString("text_5") ?? "";
      text_6 = sharedPrefs.getString("text_6") ?? "";
      text_7 = sharedPrefs.getString("text_7") ?? "";
      text_8 = sharedPrefs.getString("text_8") ?? "";
      text_9 = sharedPrefs.getString("text_9") ?? "";
      text_0 = sharedPrefs.getString("text_0") ?? "";
    });
  }

  setData() async {
    var sharedPrefs = await SharedPreferences.getInstance();

    sharedPrefs.setBool("task_1", task_1);
    sharedPrefs.setBool("task_2", task_2);
    sharedPrefs.setBool("task_3", task_3);
    sharedPrefs.setBool("task_4", task_4);
    sharedPrefs.setBool("task_5", task_5);
    sharedPrefs.setBool("task_6", task_6);
    sharedPrefs.setBool("task_7", task_7);
    sharedPrefs.setBool("task_8", task_8);
    sharedPrefs.setBool("task_9", task_9);
    sharedPrefs.setBool("task_0", task_0);

    if (controller_1.text != "") {
      sharedPrefs.setString("text_1", controller_1.text);
    }
    if (controller_2.text != "") {
      sharedPrefs.setString("text_2", controller_2.text);
    }
    if (controller_3.text != "") {
      sharedPrefs.setString("text_3", controller_3.text);
    }
    if (controller_4.text != "") {
      sharedPrefs.setString("text_4", controller_4.text);
    }
    if (controller_5.text != "") {
      sharedPrefs.setString("text_5", controller_5.text);
    }
    if (controller_6.text != "") {
      sharedPrefs.setString("text_6", controller_6.text);
    }
    if (controller_7.text != "") {
      sharedPrefs.setString("text_7", controller_7.text);
    }
    if (controller_8.text != "") {
      sharedPrefs.setString("text_8", controller_8.text);
    }
    if (controller_9.text != "") {
      sharedPrefs.setString("text_9", controller_9.text);
    }
    if (controller_0.text != "") {
      sharedPrefs.setString("text_0", controller_0.text);
    }
  }

  reset() async {
    var sharedPrefs = await SharedPreferences.getInstance();

    setState(() {
      task_1 = false;
      task_2 = false;
      task_3 = false;
      task_4 = false;
      task_5 = false;
      task_6 = false;
      task_7 = false;
      task_8 = false;
      task_9 = false;
      task_0 = false;

      sharedPrefs.setBool("task_1", task_1);
      sharedPrefs.setBool("task_2", task_2);
      sharedPrefs.setBool("task_3", task_3);
      sharedPrefs.setBool("task_4", task_4);
      sharedPrefs.setBool("task_5", task_5);
      sharedPrefs.setBool("task_6", task_6);
      sharedPrefs.setBool("task_7", task_7);
      sharedPrefs.setBool("task_8", task_8);
      sharedPrefs.setBool("task_9", task_9);
      sharedPrefs.setBool("task_0", task_0);
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Transform.scale(
                scale: 1.5,
                child: Checkbox(
                  activeColor: Colors.orange,
                  checkColor: Color.fromARGB(255, 48, 48, 48),
                  value: task_1,
                  onChanged: (value) {
                    setState(() {
                      task_1 = value!;
                      setData();
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  controller: controller_1,
                  decoration: InputDecoration(
                    hintText: text_1,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Transform.scale(
                scale: 1.5,
                child: Checkbox(
                  activeColor: Colors.orange,
                  checkColor: Color.fromARGB(255, 48, 48, 48),
                  value: task_2,
                  onChanged: (value) {
                    setState(() {
                      task_2 = value!;
                      setData();
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  controller: controller_2,
                  decoration: InputDecoration(
                    hintText: text_2,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Transform.scale(
                scale: 1.5,
                child: Checkbox(
                  activeColor: Colors.orange,
                  checkColor: Color.fromARGB(255, 48, 48, 48),
                  value: task_3,
                  onChanged: (value) {
                    setState(() {
                      task_3 = value!;
                      setData();
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  controller: controller_3,
                  decoration: InputDecoration(
                    hintText: text_3,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Transform.scale(
                scale: 1.5,
                child: Checkbox(
                  activeColor: Colors.orange,
                  checkColor: Color.fromARGB(255, 48, 48, 48),
                  value: task_4,
                  onChanged: (value) {
                    setState(() {
                      task_4 = value!;
                      setData();
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  controller: controller_4,
                  decoration: InputDecoration(
                    hintText: text_4,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Transform.scale(
                scale: 1.5,
                child: Checkbox(
                  activeColor: Colors.orange,
                  checkColor: Color.fromARGB(255, 48, 48, 48),
                  value: task_5,
                  onChanged: (value) {
                    setState(() {
                      task_5 = value!;
                      setData();
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  controller: controller_5,
                  decoration: InputDecoration(
                    hintText: text_5,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Transform.scale(
                scale: 1.5,
                child: Checkbox(
                  activeColor: Colors.orange,
                  checkColor: Color.fromARGB(255, 48, 48, 48),
                  value: task_6,
                  onChanged: (value) {
                    setState(() {
                      task_6 = value!;
                      setData();
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  controller: controller_6,
                  decoration: InputDecoration(
                    hintText: text_6,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Transform.scale(
                scale: 1.5,
                child: Checkbox(
                  activeColor: Colors.orange,
                  checkColor: Color.fromARGB(255, 48, 48, 48),
                  value: task_7,
                  onChanged: (value) {
                    setState(() {
                      task_7 = value!;
                      setData();
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  controller: controller_7,
                  decoration: InputDecoration(
                    hintText: text_7,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Transform.scale(
                scale: 1.5,
                child: Checkbox(
                  activeColor: Colors.orange,
                  checkColor: Color.fromARGB(255, 48, 48, 48),
                  value: task_8,
                  onChanged: (value) {
                    setState(() {
                      task_8 = value!;
                      setData();
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  controller: controller_8,
                  decoration: InputDecoration(
                    hintText: text_8,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Transform.scale(
                scale: 1.5,
                child: Checkbox(
                  activeColor: Colors.orange,
                  checkColor: Color.fromARGB(255, 48, 48, 48),
                  value: task_9,
                  onChanged: (value) {
                    setState(() {
                      task_9 = value!;
                      setData();
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  controller: controller_9,
                  decoration: InputDecoration(
                    hintText: text_9,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Transform.scale(
                scale: 1.5,
                child: Checkbox(
                  activeColor: Colors.orange,
                  checkColor: Color.fromARGB(255, 48, 48, 48),
                  value: task_0,
                  onChanged: (value) {
                    setState(() {
                      task_0 = value!;
                      setData();
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  controller: controller_0,
                  decoration: InputDecoration(
                    hintText: text_0,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Transform.scale(
          scale: 1.8,
          child: MaterialButton(
            color: Colors.orange,
            child: Text("Sıfırla"),
            onPressed: () {
              reset();
            },
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
