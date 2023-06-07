import 'package:bilgitest/soru.dart';

class TestVeri {
  int _soruSayisi = 0;
  List<Soru> _soruBankasi = [
    Soru(
        soruMetni: "Eyfel Kulesi'nin inşaatı 31 Mart 1887'de tamamlandı.",
        soruYaniti: false),
    Soru(
        soruMetni:
            "Işık sesten daha hızlı hareket ettiği için şimşek daha duyulmadan görülür",
        soruYaniti: true),
    Soru(soruMetni: "Vatikan bir ülkedir", soruYaniti: true),
    Soru(soruMetni: "Melbourne, Avustralya'nın başkentidir", soruYaniti: false),
    Soru(
        soruMetni: "Fuji Dağı, Japonya'nın en yüksek dağıdır",
        soruYaniti: true),
    Soru(
        soruMetni: "Kafatası insan vücudundaki en güçlü kemiktir.",
        soruYaniti: false),
  ];

  String getSoruMetni() {
    return _soruBankasi[_soruSayisi].soruMetni;
  }

  bool getSoruYaniti() {
    return _soruBankasi[_soruSayisi].soruYaniti;
  }

  void sonrakiSoru() {
    if (_soruSayisi + 1 < _soruBankasi.length) {
      _soruSayisi++;
    } else {
      _soruSayisi = 0;
    }
  }

  bool testBittiMi() {
    if (_soruSayisi + 1 >= _soruBankasi.length) {
      return true;
    } else {
      return false;
    }
  }

  void testiSifirla() {
    _soruSayisi = 0;
  }
}
