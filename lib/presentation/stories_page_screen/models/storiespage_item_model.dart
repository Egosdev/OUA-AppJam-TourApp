import '../../../core/app_export.dart';

/// This class is used in the [storiespage_item_widget] screen.
class StoriespageItemModel {
  StoriespageItemModel({
    this.gapRYasTuru,
    this.ankaraHareketli,
    this.gapRyasTuru1,
    this.mart,
    this.elevenMillionTwoThousand,
    this.mart1,
    this.id,
  }) {
    gapRYasTuru = gapRYasTuru ?? "Gap Rüyası Turu";
    ankaraHareketli = ankaraHareketli ?? "(Ankara Hareketli)";
    gapRyasTuru1 = gapRyasTuru1 ?? ImageConstant.imgPhoneRinging;
    mart = mart ?? "18 Mart 2024";
    elevenMillionTwoThousand = elevenMillionTwoThousand ?? "11:00 - 20:00";
    mart1 = mart1 ?? ImageConstant.imgStar24;
    id = id ?? "";
  }

  String? gapRYasTuru;

  String? ankaraHareketli;

  String? gapRyasTuru1;

  String? mart;

  String? elevenMillionTwoThousand;

  String? mart1;

  String? id;
}
