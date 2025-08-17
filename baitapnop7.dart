import 'dart:io';

void main() {
  print("Vui Lòng Nhập Họ Tên");
  String hoten = stdin.readLineSync()!;
  print("Vui Lòng Nhập Thời Gian Làm Việc");
  double thoigianlamviec = double.tryParse(stdin.readLineSync()!)!;
    print("Vui Lòng Nhập Tiền Công Nhận Được");
  double tiencongmoigio = double.tryParse(stdin.readLineSync()!)!;
  var tongluong = tiencongmoigio * thoigianlamviec;
  double tongluongtruocthue = tongluong;
  if (thoigianlamviec > 40) {
    double tienthuong = tongluong * 20 / 100;
    tongluongtruocthue = tongluong + tienthuong;
  }
  double thuethunhap = tongluongtruocthue;
  if (tongluongtruocthue > 10_000_000) {
    thuethunhap = tongluongtruocthue * 10 / 100;
  }
  if (tongluongtruocthue > 7_000_000 || tongluongtruocthue < 10_000_000) {
    thuethunhap =  tongluongtruocthue * 5 / 100;
  }
  if (tongluongtruocthue < 7_000_000) {
    thuethunhap = 0;
  }
  double luongthuclanh = tongluongtruocthue - thuethunhap;
  print('Họ Tên : $hoten');
  print('Thời Gian Làm Việc : $thoigianlamviec');
  print('Tiền Công Mỗi Giờ : $tiencongmoigio');
  print('Lương TrướcThuế : $tongluongtruocthue');
  print('Thuế Thu Nhập : $thuethunhap');
  print('Lương Thực Lãnh : $luongthuclanh');
}
