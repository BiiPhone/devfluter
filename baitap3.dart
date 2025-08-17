import 'dart:io';

void main() {
  print('Vui Lòng Điểm Toán:');
  var diemtoan = double.tryParse(stdin.readLineSync()!);
  if (diemtoan == null) {
    print('Vui Lòng Nhập điểm toán vô đi baby');
    var diemtoan = double.tryParse(stdin.readLineSync()!);
    if (diemtoan == null) {
      print('bye bye bye');
    }
  }
  print('Vui Lòng Điểm Lý:');
  var diemly = double.tryParse(stdin.readLineSync()!);
  if (diemly == null) {
    print('Vui Lòng Nhập điểm Lý vô đi baby');
    var diemly = double.tryParse(stdin.readLineSync()!);
    if (diemly == null) {
      print('bye bye bye');
    }
  }

  print('Vui Lòng Điểm Hóa :');
  var diemhoa = double.tryParse(stdin.readLineSync()!);
  if (diemhoa == null) {
    print('Vui Lòng Nhập điểm Hóa vô đi baby');
    var diemtoan = double.tryParse(stdin.readLineSync()!);
    if (diemtoan == null) {
      print('bye bye bye');
    }
  }

  var sum = diemtoan! + diemhoa! + diemly!;
  var diemtrungbinh = sum / 3;
  print('Điểm Trung Bình của Bạn :  $diemtrungbinh');
}
