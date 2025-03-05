import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homzes/features/home/data/model/property.dart';
import 'package:homzes/features/home/data/repository/property_repository.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) async => switch (event) {
          LoadPropertiesEvent() => _loadProperties(event, emit),
        });
    add(LoadPropertiesEvent());
  }

  final PropertyRepository _propertyRepository = PropertyRepository();

  FutureOr<void> _loadProperties(
    LoadPropertiesEvent event,
    Emitter<HomeState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          status: HomeStatus.loading,
        ),
      );

      List<Property> properties = await _propertyRepository.getProperties();

      emit(
        state.copyWith(
          status: HomeStatus.success,
          properties: properties,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: HomeStatus.error,
          errorMessage: 'An error occurred..!',
        ),
      );
    }
  }
}
