import 'package:equatable/equatable.dart';
import 'package:travels_and_tours/src/data/models/home_response.dart';

abstract class HomeStates extends Equatable{}

class InitialHomeState extends HomeStates{
  @override
  List<Object?> get props => [];
}

class LoadingHomeState extends HomeStates{
  @override
  List<Object?> get props => [];
}

class LoadedHomeState extends HomeStates{
  final HomeResponse homeResponse;

  LoadedHomeState({required this.homeResponse});

  @override
  List<Object?> get props => [homeResponse];
}

class ErrorHomeState extends HomeStates{
  @override
  List<Object?> get props => [];
}