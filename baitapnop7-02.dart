import 'dart:io';

void main() {
  print("Vui Lòng Nhập Tên Sản Phẩm");
  String namesp = stdin.readLineSync()!;
  print("Vui Lòng Nhập Số Lượng Mua");
  int slsp = int.tryParse(stdin.readLineSync()!)!;
  print("Vui Lòng Nhập Giá Tiền Sản Phẩm");
  double price = double.tryParse(stdin.readLineSync()!)!;
  var totalprice = slsp * price;

  double giamgia = 0;
  if (totalprice >= 1_000_000) {
    giamgia = totalprice * 10 / 100;
  }
  if (totalprice < 1_000_000 || totalprice >= 500_000) {
    giamgia = totalprice * 5 / 100;
  }
  if (totalprice < 500_000) {
    giamgia = 0;
  }
  double totalpricegiamgia = totalprice - giamgia;
  double VAT = totalpricegiamgia * 8 / 100;
  double bill = totalpricegiamgia+VAT;
  print('Tên Sản Phẩm : $namesp');
  print('Tổng Số Lượng : $slsp');
  print('Giá Sản Phẩm : $price');
  print('Tổng Tiền : $totalprice');
  print('Tổng Tiền Được Giảm : $totalpricegiamgia');
  print('VAT : $VAT');
  print('BILL : $bill');
}
