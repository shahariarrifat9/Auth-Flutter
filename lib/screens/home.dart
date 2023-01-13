import 'package:flutter/material.dart';
import 'package:flutter_todo/screens/login.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 150,
                child: Image.asset(
                  "assets/images/checklist.png",
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                "Welcome Back",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Name",
                style: TextStyle(
                    color: Colors.black45, fontWeight: FontWeight.bold),
              ),
              Text(
                "Email",
                style: TextStyle(
                    color: Colors.black45, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              ActionChip(label: Text("Logout"), onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
