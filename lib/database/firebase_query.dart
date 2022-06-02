import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:shoe_kart_ecommerce_app/model/user_model.dart';

void registerUser(UserModel userDetail, String userPassword) async {
  // print(userEmail);
  // final _auth = FirebaseAuth.instance;
  // await FirebaseAuth.instance
  //     .createUserWithEmailAndPassword(email: userEmail, password: userPassword)
  //     .then((value) => {print("Data stored")})
  //     .catchError((e) =>
  //         // (err) => showMyDialog(context, err.message, "Warning"),
  //         print("error"));
  try {
    final _auth = FirebaseAuth.instance;
    DatabaseReference ref = FirebaseDatabase.instance.ref("users/");
    final credential = await _auth.createUserWithEmailAndPassword(
      email: userDetail.userEmail.toString(),
      password: userPassword,
    );
    print(credential);
    await ref.set(userDetail.toMap());
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
}
