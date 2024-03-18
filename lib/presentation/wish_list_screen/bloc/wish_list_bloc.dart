import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/wishlist_item_model.dart';
import 'package:appjam/presentation/wish_list_screen/models/wish_list_model.dart';
part 'wish_list_event.dart';
part 'wish_list_state.dart';

/// A bloc that manages the state of a WishList according to the event that is dispatched to it.
class WishListBloc extends Bloc<WishListEvent, WishListState> {
  WishListBloc(WishListState initialState) : super(initialState) {
    on<WishListInitialEvent>(_onInitialize);
    on<WishlistItemEvent>(_wishlistItem);
  }

  _wishlistItem(
    WishlistItemEvent event,
    Emitter<WishListState> emit,
  ) {
    List<WishlistItemModel> newList =
        List<WishlistItemModel>.from(state.wishListModelObj!.wishlistItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelectedSwitch: event.isSelectedSwitch,
    );
    emit(state.copyWith(
        wishListModelObj:
            state.wishListModelObj?.copyWith(wishlistItemList: newList)));
  }

  List<WishlistItemModel> fillWishlistItemList() {
    return [
      WishlistItemModel(
          gapRYasTuru: "Gap Rüyası Turu",
          ankaraHareketli: "(Ankara Hareketli)",
          mart: "18 Mart 2024",
          elevenMillionTwoThousand: "11:00 - 20:00",
          mart1: ImageConstant.imgStar22),
      WishlistItemModel(
          gapRYasTuru: "Gap Rüyası Turu", ankaraHareketli: "(Ankara Hareketli)")
    ];
  }

  _onInitialize(
    WishListInitialEvent event,
    Emitter<WishListState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        wishListModelObj: state.wishListModelObj?.copyWith(
      wishlistItemList: fillWishlistItemList(),
    )));
  }
}
