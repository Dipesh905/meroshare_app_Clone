import 'package:flutter/material.dart';
import 'package:meroshareapp_clone/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obsecure = false;
  bool checkbox = false;
  Icon eye = const Icon(Icons.remove_red_eye);

  // TextEditingController _depositoryparticipants = TextEditingController();
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();

  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: SingleChildScrollView(
          child: Container(
            color: Colors.blue[400],
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "MERO ",
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        "SHARE ",
                        style: TextStyle(color: Colors.red, fontSize: 24),
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.59,
                  width: MediaQuery.of(context).size.width * 0.99,
                  child: Card(
                    color: Colors.lightBlue,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(
                            "Depository Participants",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Card(
                            child: TextFormField(
                              initialValue:
                                  "MACHHAPUCHCHHRE BANK LIMITED(16100)",
                              // controller: _depositoryparticipants,
                              decoration:
                                  InputDecoration(border: OutlineInputBorder()),
                            ),
                          ),
                          Text(
                            "Username",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Card(
                            child: TextFormField(
                              onChanged: (value) {
                                username = value;
                              },
                              controller: _username,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Username"),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Password",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Card(
                            child: TextFormField(
                              onChanged: (value) {
                                setState(() {
                                  password = value;
                                });
                              },
                              controller: _password,
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  suffixIcon: InkWell(
                                    onTap: () {
                                      setState(() {
                                        obsecure = false;
                                      });
                                    },
                                    child: eye,

                                    // child: Icon(
                                    //   Icons.remove_red_eye,
                                    //   semanticLabel: "Show password",
                                    // ),
                                  ),
                                  border: OutlineInputBorder()),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Checkbox(
                                value: checkbox,
                                onChanged: (value) {
                                  setState(() {
                                    checkbox = value!;
                                  });
                                },
                              ),
                              Text(
                                "Remember LOGIN ID",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          ElevatedButton(
                              onPressed: () {
                                print(username);
                                print(password);
                                if (username == "12345" &&
                                    password == "correct") {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const HomePage();
                                  }));
                                } else {
                                  print("incorrect username or password");
                                }
                              },
                              child: Text("LOGIN")),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.fingerprint,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Tap to Login With Fingerprint",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forgot your password?",
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "© 2021 CDS And Clearing limited,All Right Reserved",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
