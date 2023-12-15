import 'package:flutter/material.dart';
import 'package:sign_in/signup.dart';

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("LOGIN",style:TextStyle(
                fontSize: 33,
                color: Colors.black
              )),
              SizedBox(height: 35,),
              Image.network("https://cdn-icons-png.flaticon.com/512/1060/1060438.png",width: 200,),
              SizedBox(height: 35,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(66),
                  color: Colors.black12
                ),
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: 266,
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.person,color: Colors.black26,),
                    border: InputBorder.none,
                    hintText: "Your Email: "
                  ),
                ),
              ),
              SizedBox(height: 23,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(66),
                    color: Colors.black12
                ),
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: 266,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: InputBorder.none,
                    suffix: Icon(Icons.visibility,color: Colors.black26,),
                    icon: Icon(Icons.lock,size: 19,color: Colors.black26,),
                  ),
                ),
              ),
              SizedBox(height: 17,),
              ElevatedButton(onPressed: (){
              },style: ButtonStyle(
                padding:MaterialStateProperty.all(EdgeInsets.symmetric(
                  horizontal: 106,vertical: 10
                )) ,
                backgroundColor: MaterialStateProperty.all(Colors.black26),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(27)
                )),
              ),
                  child: Text("LOGIN",style: TextStyle(fontSize: 23,color: Colors.white),)),
              SizedBox(height: 17,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUp()));
                    },
                    child: Text("Signup",style: TextStyle(fontWeight: FontWeight.bold),),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    ) ;
  }
}
