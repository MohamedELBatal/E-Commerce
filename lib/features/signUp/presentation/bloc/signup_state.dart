part of 'signup_bloc.dart';

@immutable
 class SignupState {
 ScreenStatus? status;
 SignUpModel? model;
 Failures? failures;

 SignupState({this.status, this.model, this.failures});

 SignupState copyWith({ScreenStatus? status,
   SignUpModel? model,
   Failures? failures,}){
  return SignupState(
   model: model ?? this.model,
   failures: failures ?? this.failures,
   status: status ?? this.status
  );
 }
}

class SignUpInitState extends SignupState {
 SignUpInitState():super(status: ScreenStatus.init);
}

