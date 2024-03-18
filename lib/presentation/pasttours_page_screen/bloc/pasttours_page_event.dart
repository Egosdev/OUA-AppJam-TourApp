// ignore_for_file: must_be_immutable

part of 'pasttours_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PasttoursPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PasttoursPageEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PasttoursPage widget is first created.
class PasttoursPageInitialEvent extends PasttoursPageEvent {
  @override
  List<Object?> get props => [];
}
