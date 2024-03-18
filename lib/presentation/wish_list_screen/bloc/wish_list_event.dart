// ignore_for_file: must_be_immutable

part of 'wish_list_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WishList widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WishListEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WishList widget is first created.
class WishListInitialEvent extends WishListEvent {
  @override
  List<Object?> get props => [];
}

class WishlistItemEvent extends WishListEvent {
  WishlistItemEvent({
    required this.index,
    this.isSelectedSwitch,
  });

  int index;

  bool? isSelectedSwitch;

  @override
  List<Object?> get props => [
        index,
        isSelectedSwitch,
      ];
}
