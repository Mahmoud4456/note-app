import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

class SimpleObserverBloc implements BlocObserver{
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint("Change is $change");
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint("onClose : $bloc");
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint("OnCreate : $bloc");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint("onError : $bloc");
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
  }
}
class twoObservrerBloc implements BlocObserver{
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint("change $change ");
  }

  @override
  void onClose(BlocBase bloc) {
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint("onCreate $bloc ");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint("Error : $error ");
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
  }
}