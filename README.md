# vn_provinces

List all Vietnam Provinces. 

## Usage

Find province, district, ward by code and keyword

```dart
final vnProvinces = VNProvinces();
List<VNProvince> provinces = vnProvinces.allProvince(keyword: "hà nội");
List<VNDistrict> districts = vnProvinces.allProvince(1, keyword: "Ba Đình");
List<VNWard> wards = vnProvinces.allProvince(1, keyword: "phúc Xá");
```

## Description
Go to: [GSO](https://danhmuchanhchinh.gso.gov.vn/) (this URL may change when [GSOVN](https://www.gso.gov.vn/) replaces their software).

- Find the button "Xuất Excel".
- Tick the "Quận Huyện Phường Xã" checkbox.
- Click the button to export and download list of units in Excel (XLS) file.
- Update follow this code

## Data source
Name and code of provinces, districts and wards: [General Statistics Office of Viet Nam](https://www.gso.gov.vn/).

Phone area code: [Thái Bình province's department of Information and Communication](https://sotttt.thaibinh.gov.vn/tin-tuc/buu-chinh-vien-thong/tra-cuu-ma-vung-dien-thoai-co-dinh-mat-dat-ma-mang-dien-thoa2.html).
##Credit
Given to you by [GonexTeam](mailto:admin@gonex.net), after nights and weekends.