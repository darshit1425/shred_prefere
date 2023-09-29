import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shred_prefere/screen/home_screen/contoller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeContoller contoller = Get.put(HomeContoller());
  static const String KEYNAME = "name";
  var namevalue = "no value save";
  List name = [];
  var xyz;

  @override
  void initState() {
    init();
    super.initState();
    getvalue();
  }

  init() async {
    xyz = [];
    SharedPreferences shr = await SharedPreferences.getInstance();
    xyz = jsonDecode(shr.getString("name").toString());
    name = xyz;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 25,
          title: Text("Shared preference"),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: contoller.txtname,
                  decoration: InputDecoration(
                    labelText: "name",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  if (contoller.txtname.text.isNotEmpty) {
                    name.add(contoller.txtname.text);
                    contoller.txtname.clear();
                    setState(() {});
                  }

                  if (name.isNotEmpty) {
                    SharedPreferences shr =
                        await SharedPreferences.getInstance();
                    await shr.setString("name", jsonEncode(name));
                    xyz = jsonDecode(shr.getString("name").toString());
                    setState(
                      () {},
                    );
                  }
                },
                child: Text("Save"),
              ),
              const SizedBox(
                height: 20,
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(10),
              //           color: Colors.blue.shade100),
              //       child: Text(
              //         namevalue,
              //         style: TextStyle(fontSize: 25),
              //       )),
              // ),
              Expanded(
                child: ListView.builder(
                  itemCount: xyz.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 5),
                          ],
                          gradient: LinearGradient(
                            colors: [
                              Colors.deepOrange.withOpacity(0.8),
                              Colors.yellow.withOpacity(0.99),
                              Colors.green
                            ],
                            stops: [0.1, 0.7, 1],
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        child: ListTile(
                          title: Text(
                            "${xyz[index]}",
                            style: TextStyle(
                                fontSize: 45,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> getvalue() async {
    var prefs = await SharedPreferences.getInstance();
    var getname = prefs.getString(KEYNAME);

    setState(
      () {
        namevalue = getname ?? "no value";
      },
    );
  }
}
