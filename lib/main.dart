import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),);

  }

}

class HomeActivity extends StatefulWidget{
   HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  int myIndex =0;
  // List  widgetList =  [
  //   Text(
  //     "Home",
  //     style: TextStyle(fontSize: 40),
  //   ),
  //   Text(
  //     'Contact',
  //     style: TextStyle(fontSize: 40),
  //   ),
  //   Text(
  //     'Person',
  //     style: TextStyle(fontSize: 40),
  //   )
  // ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(backgroundColor: Colors.blue,
      title: Text("MyApp"),
      ) ,
      body: Center(
       // child:(widgetList[myIndex]) ,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,

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