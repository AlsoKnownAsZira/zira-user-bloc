import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app.dart';
import 'general_observer.dart';
import 'package:flutter/material.dart';
void main(){
  Bloc.observer = MyObserver();
  runApp(App());
}