# Getting Started: Vietnam Provinces
### Install
```yaml
dependencies:
  vn_provinces: 0.0.2
```

## Usage

Find province, district, ward by code and keyword

```dart
final vnProvinces = VNProvinces();
List<VNProvince> provinces = vnProvinces.allProvince(keyword: "hà nội");
List<VNDistrict> districts = vnProvinces.allProvince(1, keyword: "Ba Đình");
List<VNWard> wards = vnProvinces.allProvince(1, keyword: "phúc Xá");
```