
void main() {
  double aab = 5.5; // kieu du lieu thuc
  bool banghaykhong = 5 == 3; // tra ket qua dung hay sai
  print(banghaykhong);
  String text = 'abc'; // chuoi
  print(text);
  List<int> number = [1, 2, 3, 4, 5]; // chuoi number dang int so nguyen
  List<int> number2 = [7, 8, 9, 10, 11];
  number[2] = 10; // thay doi gia tri so 2 trong list number thanh 10
  number.addAll(number2); // them toan bo gia tri cua number vao list number2
  number.remove(5); // nho ky remove gia tri trong list lun nha
  number.removeAt(4); // xoa gia tri vi tri so 4 trong list number
  print(number);
  List<String> names = [
    "tuan",
    "bi",
    "hong",
    "ngan",
    "ngan",
  ]; // chuoi dang string duoc quyen trung
  print(names[2]); // lay ten vi tri so 2 trong String names
  String lastIndexNames = names.last; // lay cai ten cuoi cung trong string name
  print(lastIndexNames);
  Set<String> filternames = {
    "tuan",
    "bi",
    "bi",
    "ngan",
    "ngan",
    "hong",
    "hong",
  }; // loc trung kieu du lieu nho dau {}
  print(filternames);
  Map<String, int> tentuoi = {
    'Bi': 95,
    'Bob': 80,
    'Charlie': 88,
  }; // khai bao dang ten tuoi , quoc gia ...
  print(tentuoi);
  dynamic ab = 10; // ro rang ab dang la int
  ab = 'abcd'; // bien ab dc doi thanh dang string
  print(ab);
}
