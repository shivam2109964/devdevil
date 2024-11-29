import 'package:bloc/bloc.dart';
import 'package:devdevil/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  SignUpBloc() : super(SignUpInitial()) {
    on<SignUpWithEmailId>(
      (event, emit) async {
        try {
          emit(SignUpLoadingState());

          await firebaseAuth.createUserWithEmailAndPassword(
            email: event.userModel.email,
            password: event.userModel.confPassword,
          );
          emit(SignUpDoneState());
        } on FirebaseAuthException catch (e) {
          switch (e.code) {
            case "invalid-email":
              emit(SignUpErrorState("Invalid email format."));
              break;

            case "email-already-in-use":
              emit(SignUpErrorState("This email is already in use."));
              break;

            case "weak-password":
              emit(SignUpErrorState("Your password is weak."));
              break;

            case "invalid-credential":
              emit(SignUpErrorState("The credentials provided are invalid."));
              break;

            case "network-request-failed":
              emit(SignUpErrorState("Network error. Check your connection."));
              break;

            case "user-disabled":
              emit(SignUpErrorState(
                  "The user's account has been disabled by an admin."));
              break;

            case "internal-error":
              emit(SignUpErrorState(
                  "An internal database server issue occurred."));
              break;

            default:
              emit(SignUpErrorState("An error occurred: ${e.message}"));
              break;
          }
        } catch (e) {
          emit(
            SignUpErrorState("An unexpected error occurred ${e.toString()}"),
          );
        }
      },
    );
    on<SignUpButtonPressEvent>(
      (event, emit) {
        emit(SignUpButtonPressedState());
      },
    );
    on<SignUpWithGoogleEvent>((event, emit) async {
      try {
        print("Starting Google Sign-In...");
        final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
        if (googleUser == null) {
          print("Google sign-in canceled by user.");
          emit(SignUpErrorState("Google sign-in canceled."));
          return;
        }
        print("Google user signed in: ${googleUser.email}");

        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;
        print("Google authentication fetched: ${googleAuth.accessToken}");

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        print("Firebase credential created.");

        UserCredential userCredential =
            await FirebaseAuth.instance.signInWithCredential(credential);
        print("User signed in successfully: ${userCredential.user?.email}");

        emit(SignUpWithGoogleDone(userCredential.user));
      } catch (e) {
        print("Error during Google Sign-In: $e");
        emit(SignUpErrorState("Google sign-in failed: $e"));
      }
    });
  }
}
