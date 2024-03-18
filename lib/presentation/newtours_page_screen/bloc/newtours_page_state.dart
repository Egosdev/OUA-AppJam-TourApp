// ignore_for_file: must_be_immutable

part of 'newtours_page_bloc.dart';

/// Represents the state of NewtoursPage in the application.
class NewtoursPageState extends Equatable {
  NewtoursPageState({
    this.searchController,
    this.newtoursPageModelObj,
  });

  TextEditingController? searchController;

  NewtoursPageModel? newtoursPageModelObj;

  @override
  List<Object?> get props => [
        searchController,
        newtoursPageModelObj,
      ];

  NewtoursPageState copyWith({
    TextEditingController? searchController,
    NewtoursPageModel? newtoursPageModelObj,
  }) {
    return NewtoursPageState(
      searchController: searchController ?? this.searchController,
      newtoursPageModelObj: newtoursPageModelObj ?? this.newtoursPageModelObj,
    );
  }
}
