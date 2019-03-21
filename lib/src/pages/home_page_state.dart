import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class HomePageState extends Equatable {
  HomePageState([List props = const []]) : super(props);
}

class HomePageStateDefault extends HomePageState {
  @override
  String toString() => 'HomePageStateDefault';
}

class HomePageStateLoading extends HomePageState {
  @override
  String toString() => 'HomePageStateLoading';
}

class HomePageStateError extends HomePageState {
  final String message;

  HomePageStateError({this.message});

  @override
  String toString() => 'HomePageStateError';
}

class HomePageStateLoaded extends HomePageState {
  final dynamic data;

  HomePageStateLoaded({this.data});

  @override
  String toString() => 'HomePageStateLoaded';
}