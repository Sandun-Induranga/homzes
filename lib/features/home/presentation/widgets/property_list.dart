import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/color_codes.dart';
import '../../bloc/home_bloc.dart';
import '../../bloc/home_state.dart';
import 'property_item.dart';

class PropertyList extends StatelessWidget {
  const PropertyList({
    super.key,
    this.isOffers = false,
    this.isViewAll = false,
  });

  final bool isOffers;
  final bool isViewAll;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        if (state.status == HomeStatus.loading) {
          return const Center(
            child: CircularProgressIndicator(
              color: ColorCodes.blackColor,
            ),
          );
        } else if (state.status == HomeStatus.error) {
          return Center(child: Text(state.errorMessage));
        }
        return ListView.builder(
            scrollDirection: isViewAll ? Axis.vertical : Axis.horizontal,
            itemCount: state.properties.length,
            itemBuilder: (context, index) {
              return PropertyItem(
                property: state.properties[index],
                isOffers: isOffers,
                isViewAll: isViewAll,
              );
            });
      },
    );
  }
}
