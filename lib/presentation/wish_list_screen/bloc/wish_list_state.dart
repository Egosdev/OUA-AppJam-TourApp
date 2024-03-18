// ignore_for_file: must_be_immutable

part of 'wish_list_bloc.dart';

/// Represents the state of WishList in the application.
class WishListState extends Equatable {
  WishListState({
    this.searchController,
    this.wishListModelObj,
  });

  TextEditingController? searchController;

  WishListModel? wishListModelObj;

  @override
  List<Object?> get props => [
        searchController,
        wishListModelObj,
      ];

  WishListState copyWith({
    TextEditingController? searchController,
    WishListModel? wishListModelObj,
  }) {
    return WishListState(
      searchController: searchController ?? this.searchController,
      wishListModelObj: wishListModelObj ?? this.wishListModelObj,
    );
  }
}
