// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [wishlist_item_widget] screen.
class WishlistItemModel extends Equatable {
  WishlistItemModel({
    this.gapRYasTuru,
    this.ankaraHareketli,
    this.isSelectedSwitch,
    this.mart,
    this.elevenMillionTwoThousand,
    this.mart1,
    this.id,
  }) {
    gapRYasTuru = gapRYasTuru ?? "Gap Rüyası Turu";
    ankaraHareketli = ankaraHareketli ?? "(Ankara Hareketli)";
    isSelectedSwitch = isSelectedSwitch ?? false;
    mart = mart ?? "18 Mart 2024";
    elevenMillionTwoThousand = elevenMillionTwoThousand ?? "11:00 - 20:00";
    mart1 = mart1 ?? ImageConstant.imgStar22;
    id = id ?? "";
  }

  String? gapRYasTuru;

  String? ankaraHareketli;

  bool? isSelectedSwitch;

  String? mart;

  String? elevenMillionTwoThousand;

  String? mart1;

  String? id;

  WishlistItemModel copyWith({
    String? gapRYasTuru,
    String? ankaraHareketli,
    bool? isSelectedSwitch,
    String? mart,
    String? elevenMillionTwoThousand,
    String? mart1,
    String? id,
  }) {
    return WishlistItemModel(
      gapRYasTuru: gapRYasTuru ?? this.gapRYasTuru,
      ankaraHareketli: ankaraHareketli ?? this.ankaraHareketli,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      mart: mart ?? this.mart,
      elevenMillionTwoThousand:
          elevenMillionTwoThousand ?? this.elevenMillionTwoThousand,
      mart1: mart1 ?? this.mart1,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
        gapRYasTuru,
        ankaraHareketli,
        isSelectedSwitch,
        mart,
        elevenMillionTwoThousand,
        mart1,
        id
      ];
}
