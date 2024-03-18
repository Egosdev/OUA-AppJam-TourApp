// ignore_for_file: must_be_immutable

part of 'stories_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///StoriesPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class StoriesPageEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the StoriesPage widget is first created.
class StoriesPageInitialEvent extends StoriesPageEvent {
  @override
  List<Object?> get props => [];
}
