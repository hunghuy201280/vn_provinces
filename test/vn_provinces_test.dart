import 'package:flutter_test/flutter_test.dart';

import 'package:vn_provinces/vn_provinces.dart';

void main() {
  test('find a province', () {
    final vnProvinces = VNProvinces();
    expect(vnProvinces.allProvince(keyword: "hà nội")[0].codename, 'thanh_pho_ha_noi');
  });
  test('find a district', () {
    final vnProvinces = VNProvinces();
    expect(vnProvinces.allDistrict(1, keyword: "Ba Đình")[0].codename, "quan_ba_dinh");
    });
  test('find a ward', () {
    final vnProvinces = VNProvinces();
    expect(vnProvinces.allWard(1, keyword: "phúc Xá")[0].codename, "phuong_phuc_xa");
  });
}
