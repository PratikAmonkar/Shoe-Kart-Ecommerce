import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:shoe_kart_ecommerce_app/model/user_model.dart';
import 'package:shoe_kart_ecommerce_app/widgets/custom_alert_box_widget.dart';

void registerUser(String userEmail, String userPassword, context) async {
  try {
    final _auth = FirebaseAuth.instance;
    await _auth.createUserWithEmailAndPassword(
      email: userEmail,
      password: userPassword,
    );
    User? user = _auth.currentUser;
    DatabaseReference ref = FirebaseDatabase.instance.ref("users/${user!.uid}");
    UserModel userDetail = UserModel(
      userId: user.uid,
      userName: user.displayName,
      userEmail: user.email,
      isUserVerified: user.emailVerified,
    );
    await ref.set(userDetail.toMap()).whenComplete(
        () => showMyDialog(context, "Signup successfully", "Success"));
  } on FirebaseAuthException catch (e) {
    if (e.code == 'email-already-in-use') {
      showMyDialog(
          context, "Account already present with this email id", "Warning");
    }
  } catch (e) {
    showMyDialog(context, "Error due to technical issue", "Alert");
  }
}

void loginUser(String userEmail, String userPassword, context) async {
  try {
    final _auth = FirebaseAuth.instance;
    await _auth
        .signInWithEmailAndPassword(email: userEmail, password: userPassword)
        .then(
            (value) => showMyDialog(context, "Signin Successfully", "Success"));
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      showMyDialog(context, "No user found with this email id", "Alert");
    }
  } catch (e) {
    showMyDialog(context, "Error due to technical issue", "Alert");
  }
}
