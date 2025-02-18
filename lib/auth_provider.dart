import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authProviderProvider = StateNotifierProvider<AuthProvider, User?>((ref) {
  return AuthProvider();
});

class AuthProvider extends StateNotifier<User?> {
  AuthProvider() : super(FirebaseAuth.instance.currentUser);

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> signUp(String email, String password, String role) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = userCredential.user;
      if (user != null) {
        // Save role in Firestore
        await _firestore.collection('users').doc(user.uid).set({
          'email': email,
          'role': role, // Save role in Firestore
        });

        // Assign Firebase Custom Claims for role-based authentication
        await _setCustomClaims(user.uid, role);
      }
    } catch (e) {
      throw Exception("Signup failed: ${e.toString()}");
    }
  }

  Future<void> login(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      state = userCredential.user;
    } catch (e) {
      throw Exception("Login failed: ${e.toString()}");
    }
  }

  Future<String> getUserRole() async {
    User? user = _auth.currentUser;
    if (user != null) {
      DocumentSnapshot snapshot = await _firestore.collection('users').doc(user.uid).get();
      return snapshot['role'] ?? 'unknown';
    }
    return 'unknown';
  }

  Future<void> _setCustomClaims(String uid, String role) async {
    // Firebase Admin SDK needed on backend to set custom claims
    print("Assigning custom claims for role: $role (Backend setup needed)");
  }
}
