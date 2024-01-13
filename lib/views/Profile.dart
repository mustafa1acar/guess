import 'package:flutter/material.dart';
import 'package:guess_it/views/login_page.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Column(
            children: [
              TextButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute
                  (builder: (context)=>LoginScreen()));
              }, child: Text('Log Out')),
              TextButton(onPressed: (){}, child: Text('Delete Account')),

            ],
          ),
        )
    );
  }
}
