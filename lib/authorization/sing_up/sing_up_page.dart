import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lottie/lottie.dart';

class SingUpPage extends StatelessWidget {
  SingUpPage({Key? key}) : super(key: key);
  final box = GetStorage();
  TextEditingController email = TextEditingController();
  TextEditingController pasword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Ro`yhatdan o`tish'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        // height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.green.shade200,
              Colors.yellowAccent.shade100,
            ])),
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width * 0.98,
                  child:  Lottie.asset('assets/images/AB.json',fit: BoxFit.cover),
                ),
                const SizedBox(
                  height: 10,
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
                  height: 15,
                ),
                TextField(
                  controller: pasword,
                  decoration: InputDecoration(
                      label: Text('Parol'),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green.shade800),
                          borderRadius: BorderRadius.circular(15.0)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0))),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: pasword,
                  decoration: InputDecoration(
                      label: Text('Parolni qayta kiriting'),
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
                  child: OutlinedButton(
                    child: const Text(
                      'Ro`yhatdan o`tish',
                      style: TextStyle(color: Colors.black54),
                    ),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: BorderSide(color: Colors.green.shade800),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // try {
          //   final db = FirebaseFirestore.instance;
          //   UserCredential userCredential =
          //       await auth.createUserWithEmailAndPassword(
          //           email: email.text, password: pasword.text);
          //   Navigator.pushReplacement(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) =>  AllMindsPage(),
          //       ));
          //   box.write('UID', userCredential.user?.uid);
          //   db.collection('buy').doc('${userCredential.user?.uid}').
          //   collection('kino');
          //   db.collection('buy').doc('${userCredential.user?.uid}').
          //   collection('info').doc('1').set({
          //     "ism":'Qwera',
          //     "familiya":'Flutter',
          //     "UID":'${box.read('UID')}'
          //
          //   });
          //
          //
          //   print(userCredential.user?.uid);
          // } catch (e) {
          //   ScaffoldMessenger.of(context)
          //       .showSnackBar(SnackBar(content: Text(e.toString())));
          // }
        },
        child: Icon(Icons.login),
      ),
    );
  }
}
