import 'package:abc/provider/sign.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(create: (context) => NotesProvider()),
    //   ],
    //   child:

    return MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],

        // Define the default font family.
        fontFamily: 'Montserrat',
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 200, 255),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 35, top: 50),
            child: Text(
              'Ready to\nJoin us?',
              // style: TextStyle(
              //   color: Theme.of(context).colorScheme.onBackground,
              //   fontSize: 33,
              // ),
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: Color.fromARGB(255, 57, 72, 95),
                  ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.35),
              child: fields(),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class fields extends StatelessWidget {
  const fields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.only(left: 35, right: 35),
            child: Column(children: [
              SizedBox(
                height: 30,
              ),
              TextField(
                style: TextStyle(color: Colors.grey.shade400),
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 35, 33, 33),
                    filled: true,
                    hintText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                style: TextStyle(color: Colors.grey.shade400),
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 35, 33, 33),
                    filled: true,
                    hintText: 'Roll Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                style: TextStyle(color: Colors.grey.shade400),
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 35, 33, 33),
                    filled: true,
                    hintText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                style: TextStyle(color: Colors.grey.shade400),
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 35, 33, 33),
                    filled: true,
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              SizedBox(height: 30),
              CircleAvatar(
                radius: 30,
                backgroundColor: Color(0xff4c505b),
                child: IconButton(
                    color: Colors.white,
                    onPressed: () {
                      Confirm();
                    },
                    icon: Icon(
                      Icons.arrow_forward,
                    )),
              )
            ]))
      ],
    );
  }
}

class Confirm extends StatelessWidget {
  const Confirm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
