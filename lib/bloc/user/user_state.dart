part of 'user_bloc.dart';

abstract class UserState extends Equatable {
   UserState(this.allUser);
  List<User> allUser;
  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {
  //beri super untuk mengirim all user ke UserState
  UserInitial(List<User> allUser) : super(allUser);
}
