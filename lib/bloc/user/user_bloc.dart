import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:user_management/models/user.dart';
part 'user_state.dart';
part 'user_event.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  //nilai awal(initial ) diberi kosong saja karena belum mempunyai data model
  UserBloc() : super(UserInitial([
    // User(id: 1, name: "zira", age: 22)
  ])) {
    on<UserEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}