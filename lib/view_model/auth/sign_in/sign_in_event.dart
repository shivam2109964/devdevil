part of 'sign_in_bloc.dart';

abstract class SignInEvent {}

class SignInUserDetailsEvent extends SignInEvent {
  UserModel userModel;
  SignInUserDetailsEvent(this.userModel);
}

class SignInButtonEvent extends SignInEvent {}
