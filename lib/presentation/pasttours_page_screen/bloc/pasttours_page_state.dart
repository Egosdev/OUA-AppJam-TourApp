// ignore_for_file: must_be_immutable

part of 'pasttours_page_bloc.dart';

/// Represents the state of PasttoursPage in the application.
class PasttoursPageState extends Equatable {
  PasttoursPageState({
    this.searchController,
    this.pasttoursPageModelObj,
  });

  TextEditingController? searchController;

  PasttoursPageModel? pasttoursPageModelObj;

  @override
  List<Object?> get props => [
        searchController,
        pasttoursPageModelObj,
      ];

  PasttoursPageState copyWith({
    TextEditingController? searchController,
    PasttoursPageModel? pasttoursPageModelObj,
  }) {
    return PasttoursPageState(
      searchController: searchController ?? this.searchController,
      pasttoursPageModelObj:
          pasttoursPageModelObj ?? this.pasttoursPageModelObj,
    );
  }
}
