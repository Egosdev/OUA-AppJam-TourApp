// ignore_for_file: must_be_immutable

part of 'newtours_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewtoursPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewtoursPageEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the NewtoursPage widget is first created.
class NewtoursPageInitialEvent extends NewtoursPageEvent {
  @override
  List<Object?> get props => [];
}

class NewtourspageItemEvent extends NewtoursPageEvent {
  NewtourspageItemEvent({
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
