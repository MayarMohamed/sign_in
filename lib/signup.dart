import 'package:flutter/material.dart';
import 'package:sign_in/login.dart';

class SignUp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("SIGNUP",style: TextStyle(
                fontSize: 33,
                color: Colors.black
              ),),
              SizedBox(height: 21,),
              Image.network("https://static.thenounproject.com/png/6478-200.png",height: 100,),
              SizedBox(height: 27,),
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
                  child: Text("SIGNUP",style: TextStyle(fontSize: 23,color: Colors.white),)),
              SizedBox(height: 33,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Login()));
                    },child:Text("Login",style: TextStyle(fontWeight: FontWeight.bold),),
                  )
                ],
              ),
              SizedBox(height: 17,),
              SizedBox(
                width: 299,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Divider(
                      thickness: 0.6,
                      color: Colors.grey,
                    )),
                    Text("OR"),
                    Expanded(child: Divider(
                      thickness: 0.6,
                      color: Colors.grey,
                    )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 27),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.all(13),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1,color: Colors.grey),
                        ),
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTb6CEJg9INtyaf2J8APb69gsPOznqz7eQDw&usqp=CAU",
                        height: 27,
                        ),
                      ),
                    ),
                    SizedBox(width: 22,),
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.all(13),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1,color: Colors.grey),
                        ),
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIY_w2oVBEW5b9wIhy5XVeTt5KOaty63UtGw&usqp=CAU",
                          height: 27,
                          ),
                      ),
                    ),
                    SizedBox(width: 22,),
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.all(13),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1,color: Colors.grey),
                        ),
                        child: Image.network("https://img.icons8.com/ios7/600w/000000/twitter.png",
                          height: 27,
                        ),
                      ),
                    ),

                  ],
                ),
              )

            ],
          ),
        ) ,
      ),
    );
  }
}
