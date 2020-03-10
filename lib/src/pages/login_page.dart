import 'package:flutter/material.dart';
import 'package:helloworld/src/themes/login_theme.dart';

class LoginPage extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //Scaffold ตัวคุมหน้าจอตั้งต้นหน้าจอ

    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LoginTheme.gradient,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 120),
              Image.asset(
                'assets/images/header_1.png',
                height: 120,
                width: 320,
              ),
              SizedBox(height: 30),
              _buildSignIn(),
              SizedBox(height: 30),
              FlatButton(
                textColor: Colors.white,
                child: Text("Forgot Password"),
                onPressed: () {
                  // TODO:
                },
              ),
              _buildDivider(),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: () {
                      //TODO:
                    },
                    child: Icon(Icons.mail),
                  ),
                  SizedBox(width: 30),
                  FloatingActionButton(
                    onPressed: () {
                      //TODO:
                    },
                    child: Icon(Icons.map),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Stack _buildSignIn() {
    return Stack(
      overflow: Overflow.visible,
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Card(
          margin: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 22, right: 22, top: 22, bottom: 30),
            child: Column(
              children: <Widget>[
                _buildUsername(),
                Divider(
                  height: 0,
                  indent: 20,
                  endIndent: 20,
                ),
                _buildPassword(),
              ],
            ),
          ),
        ),
        Container(
          width: 150,
          height: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              gradient: LinearGradient(
                colors: [LoginTheme.beginColor, LoginTheme.endColor],
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: LoginTheme.beginColor,
                  offset: Offset(1.0, 6.0),
                  blurRadius: 20.0,
                ),
                BoxShadow(
                  color: LoginTheme.endColor,
                  offset: Offset(1.0, 6.0),
                  blurRadius: 20.0,
                ),
              ]),
          child: FlatButton(
            textColor: Colors.white,
//            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
            onPressed: () {
              //void function
              // TODO:
              final username = usernameController.text;
              final password = passwordController.text;
              print(username + password);
            },
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ),
        ),
      ],
    );
  }

  _buildUsername() {
    return TextField(
      controller: usernameController,
      decoration: InputDecoration(
        hintText: "Example@gmail.com",
        icon: Icon(Icons.people),
        labelText: "Email",
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }

  _buildPassword() {
    return TextField(
      controller: passwordController,
      decoration: InputDecoration(
        icon: Icon(Icons.lock),
        labelText: "Password",
        border: InputBorder.none,
      ),
      obscureText: true,
    );
  }

  Row _buildDivider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: const [Colors.white10, Colors.white],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.0, 1.0],
          )),
          width: 70,
          height: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "or",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          width: 70,
          height: 1,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: const [Colors.white10, Colors.white],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            stops: [0.0, 1.0],
          )),
        ),
      ],
    );
  }
}
