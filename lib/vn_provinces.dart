library vn_provinces;

import 'package:slug_it/slug_it.dart';
import 'data/district.dart';
import 'data/province.dart';
import 'data/ward.dart';
import 'province.dart';

/// VNProvinces.
class VNProvinces {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;

  List<VNProvince> allProvince({keyword: String}) {
    List<VNProvince> provinces = [];
    provinces = vnProvinces.values.toList();
    if (keyword != null) {
      keyword = SlugIT().makeSlug(keyword, separator: '_');
      provinces = provinces
          .where((element) => element.codename.contains(keyword))
          .toList();
    }

    return provinces;
  }

  List<VNDistrict> allDistrict(int provinceCode, {keyword: String}) {
    List<VNDistrict> districts = [];
    var districtsRaw = vnDistricts.values.toList();
    if (keyword != null) {
      keyword = SlugIT().makeSlug(keyword, separator: '_');
      districts = districtsRaw
          .where((element) =>
      element.provinceCode == provinceCode &&
          element.codename.contains(keyword))
          .toList();
    } else {
      districts = districtsRaw
          .where((element) => element.provinceCode == provinceCode)
          .toList();
    }
    return districts;
  }

  List<VNWard> allWard(int districtCode, {keyword: String}) {
    List<VNWard> wards = [];
    var wardRaw = vnWards.values.toList();
    if (keyword != null) {
      keyword = SlugIT().makeSlug(keyword, separator: '_');
      wards = wardRaw
          .where((element) =>
      element.districtCode == districtCode &&
          element.codename.contains(keyword))
          .toList();
    } else {
      wards = wardRaw
          .where((element) => element.districtCode == districtCode)
          .toList();
    }
    return wards;
  }

}
