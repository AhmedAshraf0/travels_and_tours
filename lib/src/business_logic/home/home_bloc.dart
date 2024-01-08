import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travels_and_tours/src/business_logic/home/home_states.dart';
import 'package:travels_and_tours/src/data/repositories/home_repo/home_repository.dart';

class HomeCubit extends Cubit<HomeStates>{
  final HomeRepository homeRepository;


  HomeCubit({required this.homeRepository}) : super(InitialHomeState());

  void getHomeData(){
    debugPrint("hello");
    emit(LoadingHomeState());

    homeRepository.init().then((value) {
      debugPrint("Received data :\n${value.travelInspiration.userData}");
      emit(LoadedHomeState(homeResponse: value));
    }).onError((error, stackTrace) {
      debugPrint("error ${error.toString()}");
      debugPrint("stack-- ${stackTrace.toString()}");
      emit(ErrorHomeState());
    });
  }
}