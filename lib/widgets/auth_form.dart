import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(25, 110, 0, 0),
              child: Text(
                "Hello",
                style: TextStyle(
                    fontSize: 80,
                    color: Colors.black,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: RichText(
                text: new TextSpan(
                  // Note: Styles for TextSpans must be explicitly defined.
                  // Child text spans will inherit styles from parent
                  style: TextStyle(
                      height: 0.9,
                      fontSize: 80.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w800),
                  children: <TextSpan>[
                    TextSpan(text: 'There'),
                    TextSpan(
                        text: '.',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.green,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Form(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(labelText: 'Email'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Password'),
                      obscureText: true,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    RaisedButton(
                      onPressed: () {},
                      textColor: Colors.white,
                      color: Colors.black.withOpacity(0),
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30),
                              topLeft: Radius.circular(30)),
                          boxShadow: [
                            BoxShadow(color: Colors.green, spreadRadius: 10),
                          ],
                        ),
                        padding: const EdgeInsets.fromLTRB(150, 10, 150, 10),
                        child:
                            const Text('Login', style: TextStyle(fontSize: 20)),
                      ),
                    ),
                    FlatButton(onPressed: () {}, child: Text('Signup'))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
