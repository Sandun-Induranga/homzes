import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/home_bloc.dart';
import '../../bloc/home_state.dart';
import 'featured_item.dart';

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
      builder: (context, state) {
        if (state.status == HomeStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.status == HomeStatus.error) {
          return Center(child: Text(state.errorMessage));
        }
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return FeaturedItem(
                property: state.properties[index],
                isOffers: isOffers,
                isViewAll: isViewAll,
              );
            });
      },
    );
  }
}
