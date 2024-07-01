import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final formKey = GlobalKey<FormState>();
  String name = '';
  String email = '';
  String password = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15.0, 50.0, 10.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Lets Get Started!',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  letterSpacing: 2.0,
                  fontSize: 25
                ),
              ),
              SizedBox(height: 30.0,),
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextFormField(
                      maxLength: 40,
                      decoration: InputDecoration(
                        label: Text('Name'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                        )
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Please provide a name';
                        }
                        if(value.length < 2){
                          return 'Name should be atleast 3 letters long';
                        }
                        return null;
                      },
                      onSaved: (value){
                        name=value!;
                      },
                    ),
                    SizedBox(height: 30.0,),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          label: Text('Email'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)
                            ),
                        ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Please provide an email';
                        }
                        if(value.length < 2){
                          return 'Email should be existed';
                        }
                        return null;
                      },
                      onSaved: (value){
                        email=value!;
                      },
                    ),
                    SizedBox(height: 30.0,),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        label: Text('Password'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                      ),
                      validator: (value){
                      if(value == null || value.isEmpty){
                        return 'Please provide a passwords';
                      }
                      if(value.length < 8){
                        return 'Password should be 8 characters long';
                      }
                      if(value.length >20){
                        return 'Password should be 8 characters long';
                      }
                      return null;
                    },
                      onSaved: (value){
                        password=value!;
                      },
                    ),
                    SizedBox(height: 40.0,),
                    ElevatedButton(
                      onPressed: (){
                        if(formKey.currentState!.validate()){
                          formKey.currentState!.save();
                          print(name);
                          print(email);
                          print(password);
                        }
                      },
                      child: Text('Sign up'),
                      style:ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.amber,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
