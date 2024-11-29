part of 'sign_up_bloc.dart';

abstract class SignUpState {}

final class SignUpInitial extends SignUpState {}

class SignUpLoadingState extends SignUpState {}

class SignUpDoneState extends SignUpState {}

class SignUpErrorState extends SignUpState {
  String message;
  SignUpErrorState(this.message);
}

class SignUpButtonPressedState extends SignUpState {}

class SignUpWithGoogleDone extends SignUpState {
  User? user;
  SignUpWithGoogleDone(this.user);
}
