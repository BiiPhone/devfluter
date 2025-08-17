import 'dart:io';

void main() {
  print('Vui Lòng Nhập ID :');
  int id = int.tryParse(stdin.readLineSync()!)!;
  print('Vui Lòng Nhập Tên :');
  String name = stdin.readLineSync()!;
  print('Vui Lòng Nhập Tuổi :');
  int age = int.tryParse(stdin.readLineSync()!)!;
  print('Vui Lòng Nhập Cấp Bậc :');
  String grade = stdin.readLineSync()!;
  var hienthiten = Studen(
    id,
    name,
    age,
    grade,
  ); //khai báo biến để gọi theo class studen
  hienthiten.info(); // truyền vào biến info

  List<Studen> infonew = [];
  bool run = true;
  while (run) {
    print('Vui Lòng Nhập Chức Năng :');
    print('1 : Nhập thêm info sinh viên');
    print('2 : Hiển Thị Danh Sách Sinh Viên');
    print('3 : Tìm kiếm Sinh Viên Theo ID');

    int choice = int.tryParse(stdin.readLineSync()!)!;
    if (choice == 1) {
      print('Vui Lòng Nhập ID :');
      int id = int.tryParse(stdin.readLineSync()!)!;
      print('Vui Lòng Nhập Tên :');
      String name = stdin.readLineSync()!;
      print('Vui Lòng Nhập Tuổi :');
      int age = int.tryParse(stdin.readLineSync()!)!;
      print('Vui Lòng Nhập Cấp Bậc :');
      String grade = stdin.readLineSync()!;
      var hienthiten = Studen(
        id,
        name,
        age,
        grade,
      ); //khai báo biến để gọi theo class studen
      hienthiten.info(); // truyền vào biến info
      infonew.add(hienthiten);
    }
    if (choice == 4) {
      run = false;
    }
    if (choice == 2) {
      for (var dssv
          in infonew) //vòng lập - nếu biến dssv có tồn tại trong danh sach infonew thì chạy info()
      {
        dssv.info();
      }
    }
    if (choice == 3) {
      print('Vui Lòng Nhập ID cần tỉm :');
      int findid = int.tryParse(stdin.readLineSync()!)!;
      for (var fid in infonew) // vong lập - nếu biến fid hiển thi trong danh sach infonew thi chạy ..
      {
        if (fid.id == findid) 
        {
          fid.info();
        }
      }
    }
  }
}

class Studen {
  int id;
  String name;
  int age;
  String grade;
  Studen(this.id, this.name, this.age, this.grade);
  void info() {
    print('STT : $id - Tên : $name - Tuổi : $age - Cấp Bậc : $grade');
  }
}
