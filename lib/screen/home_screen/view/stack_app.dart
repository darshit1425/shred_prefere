import 'package:flutter/material.dart';

class StackApp extends StatefulWidget {
  const StackApp({super.key});

  @override
  State<StackApp> createState() => _StackAppState();
}

class _StackAppState extends State<StackApp> {
  late bool _passwordIsVisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Stack App"),
          centerTitle: true,
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            // children: [
            //   Positioned(
            //     child: Container(
            //       height: 300,
            //       width: 300,
            //       decoration: BoxDecoration(color: Colors.red),
            //     ),
            //   ),
            //   Container(
            //     height: 250,
            //     width: 250,
            //     decoration: BoxDecoration(color: Colors.orange),
            //   ),
            //   Container(
            //     height: 200,
            //     width: 200,
            //     decoration: BoxDecoration(color: Colors.yellow),
            //   ),
            //   Container(
            //     height: 100,
            //     width: 100,
            //     decoration: BoxDecoration(color: Colors.green),
            //   ),
            //   Container(
            //     height: 50,
            //     width: 50,
            //     decoration: BoxDecoration(color: Colors.blue),
            //   ),
            //   Container(
            //     height: 25,
            //     width: 25,
            //     decoration: BoxDecoration(color: Colors.indigo),
            //   ),
            //   Container(
            //     height: 12.5,
            //     width: 12.5,
            //     decoration: BoxDecoration(color: Colors.white),
            //   ),
            // ],

            children: [
              Positioned(
                top: 30,
                left: 30,
                height: 250,
                width: 250,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  width: 150,
                  height: 150,
                  child: const Text(
                    'Green',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Positioned(
                top: 70,
                left: 60,
                width: 250,
                height: 250,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red.shade400,
                  ),
                  child: const Text(
                    'Red',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Positioned(
                top: 130,
                left: 90,
                width: 250,
                height: 250,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.purple),
                  child: const Text(
                    'Purple',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Positioned(
                top: 180,
                left: 125,
                width: 250,
                height: 250,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.yellow),
                  width: 80,
                  height: 80,
                  child: const Text(
                    'yellow',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Positioned(
                top: 220,
                left: 160,
                width: 250,
                height: 250,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.indigo,
                  ),
                  width: 80,
                  height: 80,
                  child: const Text(
                    'indigo',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    // return SafeArea(
    //   child: Scaffold(
    //     backgroundColor: Colors.orange,
    //     body: Center(
    //       child: SingleChildScrollView(
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Container(
    //               margin: const EdgeInsets.all(20),
    //               child: const Column(
    //                 children: [
    //                   SizedBox(height: 20),
    //                   Text(
    //                     'Login',
    //                     style: TextStyle(
    //                       color: Colors.white,
    //                       fontSize: 20,
    //                       fontWeight: FontWeight.bold,
    //                     ),
    //                     textAlign: TextAlign.left,
    //                   ),
    //                   SizedBox(height: 20),
    //                   Text(
    //                     'Welcome back! Please enter your details.',
    //                     style: TextStyle(
    //                       color: Colors.white,
    //                       fontSize: 14,
    //                       fontWeight: FontWeight.w200,
    //                     ),
    //                     textAlign: TextAlign.left,
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             const SizedBox(height: 20),
    //             SizedBox(
    //               width: 600,
    //               child: Card(
    //                 color: Colors.white,
    //                 shape: RoundedRectangleBorder(
    //                   borderRadius: BorderRadius.circular(15.0),
    //                 ),
    //                 margin: const EdgeInsets.all(0),
    //                 child: Column(
    //                   children: [
    //                     const SizedBox(height: 50),
    //                     const SizedBox(
    //                       width: 300,
    //                       child: TextField(
    //                         decoration: InputDecoration(
    //                           border: InputBorder.none,
    //                           labelText: 'Email',
    //                         ),
    //                       ),
    //                     ),
    //                     const SizedBox(
    //                         height: 5,
    //                         width: 300,
    //                         child: Divider(
    //                           color: Colors.orange,
    //                         )),
    //                     const SizedBox(height: 20),
    //                     SizedBox(
    //                       width: 300,
    //                       child: TextFormField(
    //                         obscureText: !_passwordIsVisible,
    //                         decoration: InputDecoration(
    //                           border: InputBorder.none,
    //                           labelText: 'Password',
    //                           suffixIcon: IconButton(
    //                             icon: Icon(
    //                               _passwordIsVisible
    //                                   ? Icons.lock_open
    //                                   : Icons.lock,
    //                               color: Colors.black,
    //                             ),
    //                             onPressed: () {
    //                               setState(() {
    //                                 _passwordIsVisible = !_passwordIsVisible;
    //                               });
    //                             },
    //                           ),
    //                         ),
    //                       ),
    //                     ),
    //                     const SizedBox(
    //                         height: 5,
    //                         width: 300,
    //                         child: Divider(
    //                           color: Colors.orange,
    //                         )),
    //                     const SizedBox(height: 20),
    //                     const Text(
    //                       'Forgot password?',
    //                       style: TextStyle(
    //                         fontSize: 16,
    //                         fontWeight: FontWeight.normal,
    //                       ),
    //                       textAlign: TextAlign.left,
    //                     ),
    //                     const SizedBox(height: 20),
    //                     ElevatedButton(
    //                       onPressed: () {},
    //                       style: ElevatedButton.styleFrom(
    //                         primary: Colors.orange,
    //                         onPrimary: Colors.white,
    //                         minimumSize: const Size(250, 50),
    //                         shape: RoundedRectangleBorder(
    //                           borderRadius: BorderRadius.circular(25.0),
    //                         ),
    //                       ),
    //                       child: const Text('Login'),
    //                     ),
    //                     const SizedBox(height: 50),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
