
void main() {
  int songuyenduong = 5; // số nguyên dương n tính tổng 1 đến n bằng vòng lặp for
  int sum = 0;
  for (var i = 0; i <= 5; i++) {
    // sum += i;
    sum = sum + i;
    //  print(sum);
  }
  print(sum);

  int songuyenduong2 = 2; // nhập số nguyên dương in ra bảng cửu chương của n bằng for
  int bangcuuchuong = 1;
  for (var ii = 1; ii <= 9; ii++) {
    print('$songuyenduong2 x $ii = ${(songuyenduong2 * ii)}');
  }

  int songuyenduong3 = 9; // nhập số nguyên dương in bao nhiu so chan so le của n bằng while
  int iii = 1;
  int sochan = 0;
  int sole = 0;
  while (iii <= songuyenduong3) {
    print(iii);
    if (iii % 2 == 0) {
      sochan++;
    } else {
      sole++;
    }
    iii++;
  }
  print('số lượng số chẵn : $sochan');
  print('số lượng số lẻ : $sole');

  int songuyenduong4 = 123456; // đảo ngược thành 654321
  String list = 'hello+vietnam+hanoi+hcm+saigon';
  String text = songuyenduong4.toString(); // biến songuyenduong4 thành string
  var daonguoc1 = text.split('').reversed; // cắt nhỏ text thành từng ki tự xong đảo ngược
  var daonguoc2 = list.split('+').reversed; // cắt nhỏ text thành từng ki tự giữa dau + xong đảo ngược
  print(daonguoc1);
  print(daonguoc2);

  int songuyenduong6 = 30;
  bool checksonguyento = kiemtra(songuyenduong6);
  if (checksonguyento == true) {
    print('$songuyenduong6 là số nguyên tố');
  }
  if (checksonguyento == false) {
    print('$songuyenduong6 là  không phải số nguyên tố');
  }
  //print(checksonguyento);
}

bool kiemtra(int n) {
  if (n <= 1) return false; // không phải số nguyên tố
  if (n == 2) return true; // 2 là số nguyên tố
  if (n % 2 == 0) return false; // loại bỏ số chẵn khác 2
  int abc = 0;
  for (int i = 3; i <= n; i++) {
    if (n % i == 0) {
      abc++;
    }
  }
  //print(abc);
  if (abc >= 2) {
    return false;
  } else {
    return true;
  }
}
