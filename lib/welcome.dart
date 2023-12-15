import 'package:flutter/material.dart';
import 'package:sign_in/login.dart';
import 'package:sign_in/signup.dart';
class Welcome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome",style: TextStyle(
                fontSize: 33,
                color: Colors.black
              ),),
              SizedBox(height: 35,),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDCJr3Iilc5vBe45AVzYP4sMmxf8UkdxUxTQ&usqp=CAU",width: 299,),
              SizedBox(height: 35,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
              }, style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(27)
                )),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 79,vertical: 10)
                ),
                backgroundColor: MaterialStateProperty.all(Colors.black26)
              ),
                  child: Text("Login",style: TextStyle(fontSize: 23,color: Colors.white),)),
              SizedBox(height: 22,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
              }, style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27)
                  )),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 77,vertical: 13)
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.black26)
              ),
                  child: Text("SignUp",style: TextStyle(fontSize: 23,color: Colors.white),)),
      
            ],
          ),
        ),
      ),
    );
  }
}
