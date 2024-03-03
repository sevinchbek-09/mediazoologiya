import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import '../sing_up/sing_up_page.dart';

class SingInPage extends StatelessWidget {
  SingInPage({Key? key}) : super(key: key);
  final box = GetStorage();
  TextEditingController email = TextEditingController();
  TextEditingController pasword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/asosiy.gif'),fit: BoxFit.cover)),
              height: 200,
              width: MediaQuery.of(context).size.width * 0.98,
            ),
            const SizedBox(
              height: 25,
            ),
            TextField(
              controller: email,
              decoration: InputDecoration(
                  focusColor: Colors.green,
                  label: Text('Email'),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green.shade800),
                      borderRadius: BorderRadius.circular(15.0)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0))),
            ),
            const SizedBox(
              height: 35,
            ),
            TextField(
              controller: pasword,
              decoration: InputDecoration(
                  label: Text('Password'),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green.shade800),
                      borderRadius: BorderRadius.circular(15.0)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0))),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 200,
              height: 50,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              side: BorderSide(color: Colors.green)))),
                  onPressed: () {},
                  child: Center(
                      child: Text(
                    'Kirish',
                    style: TextStyle(color: Colors.black54),
                  ))),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SingUpPage()));
                },
                child: Text('Ro`yhatdan o`tish'))
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     // try {
      //     //   UserCredential userCredential =
      //     //       await auth.signInWithEmailAndPassword(
      //     //           email: email.text, password: pasword.text);
      //     //
      //     //   Navigator.pushReplacement(
      //     //       context,
      //     //       MaterialPageRoute(
      //     //         builder: (context) => AllMindsPage(),
      //     //       ));
      //     //   box.write('UID', userCredential.user?.uid);
      //     //   print(userCredential.user?.uid);
      //     //
      //     // } catch (e) {
      //     //   ScaffoldMessenger.of(context)
      //     //       .showSnackBar(SnackBar(content: Text(e.toString())));
      //     // }
      //   },
      //   child: Icon(Icons.login),
      // ),
    );
  }
}
