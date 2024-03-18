// ignore_for_file: must_be_immutable

part of 'stories_page_bloc.dart';

/// Represents the state of StoriesPage in the application.
class StoriesPageState extends Equatable {
  StoriesPageState({this.storiesPageModelObj});

  StoriesPageModel? storiesPageModelObj;

  @override
  List<Object?> get props => [
        storiesPageModelObj,
      ];

  StoriesPageState copyWith({StoriesPageModel? storiesPageModelObj}) {
    return StoriesPageState(
      storiesPageModelObj: storiesPageModelObj ?? this.storiesPageModelObj,
    );
  }
}
