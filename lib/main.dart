import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(home: HomeActivity(),);

  }

}

class HomeActivity extends StatefulWidget{
  HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  int myIndex =0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(backgroundColor: Colors.blue,
        title: Text("MyApp"),
      ) ,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            myIndex = index;
          });
        },

        currentIndex:myIndex ,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.contacts),label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "person"),
        ],
      ),
    );
  }
}