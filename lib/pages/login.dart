import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
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
            children: <Widget>[
              Text(
                'Welcome Back!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
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
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        label: Text('Email'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        prefixIcon: Icon(Icons.email),
                      ),
                      validator: (value){
                      if(value == null || value.isEmpty){
                        return 'Please provide an email';
                      }
                      if(value.length < 2){
                        return 'Email should be existing';
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
                        prefixIcon: Icon(Icons.lock),
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Please provide a password';
                        }
                        if(value.length < 8){
                          return 'Password should be 8 characters long';
                        }
                        return null;
                      },
                      onSaved: (value){
                        password=value!;
                      },
                    ),
                    SizedBox(height: 30.0,),
                    ElevatedButton(
                      onPressed: (){
                        if(formKey.currentState!.validate()){
                          formKey.currentState!.save();
                          print(email);
                          print(password);
                        }
                      },
                        child: Text('Log in'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.amber,
                      ),
                    ),
                    SizedBox(height: 30.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'or login with',
                      style: TextStyle(
                        color: Colors.black
                      ),
                    ),
                  ],
                    ),
                    SizedBox(height: 30.0,),
                    ElevatedButton.icon(
                      onPressed: (){},
                      icon: Icon(Icons.login),
                      label: Text('Sign in with Google'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.red[900],
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    ElevatedButton.icon(
                      onPressed: (){},
                      icon: Icon(Icons.facebook),
                      label: Text('Sign in with Facebook'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.0,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(width: 5.0,),
                    InkWell(
                      child: Text(
                        'Signup here',
                        style: TextStyle(
                          color: Colors.amber[700],
                        ),
                      ),
                      onTap: ()=> Navigator.popAndPushNamed(context, '/signup'),
                    )
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
