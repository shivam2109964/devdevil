part of 'sign_up_bloc.dart';

abstract class SignUpEvent {}

class SignUpWithEmailId extends SignUpEvent {
  UserModel userModel;
  SignUpWithEmailId(this.userModel);
}

class SignUpButtonPressEvent extends SignUpEvent {}

class SignUpWithGoogleEvent extends SignUpEvent {}
