import 'package:flutter/cupertino.dart';

import '../data/model/property.dart';

enum HomeStatus { initial, loading, success, error }

@immutable
class HomeState {
  final HomeStatus status;
  final List<Property> properties;
  final String errorMessage;

  const HomeState({
    required this.status,
    required this.properties,
    required this.errorMessage,
  });

  factory HomeState.initial() => const HomeState(
    status: HomeStatus.initial,
    properties: [],
    errorMessage: '',
  );

  HomeState copyWith({
    HomeStatus? status,
    List<Property>? properties,
    String? errorMessage,
  }) {
    return HomeState(
      status: status ?? this.status,
      properties: properties ?? this.properties,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}