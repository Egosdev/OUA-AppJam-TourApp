// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'wishlist_item_model.dart';

/// This class defines the variables used in the [wish_list_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class WishListModel extends Equatable {
  WishListModel({this.wishlistItemList = const []}) {}

  List<WishlistItemModel> wishlistItemList;

  WishListModel copyWith({List<WishlistItemModel>? wishlistItemList}) {
    return WishListModel(
      wishlistItemList: wishlistItemList ?? this.wishlistItemList,
    );
  }

  @override
  List<Object?> get props => [wishlistItemList];
}
