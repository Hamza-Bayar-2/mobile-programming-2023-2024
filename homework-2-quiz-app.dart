import 'dart:io';
import 'dart:math';

void main() {
  Questions questions = new Questions();
  String? answer;
  List<String> allAnswers = [];
  int questionAmount = 5;

  List<int> randomQuestionNumbers = generateRandomNumbers(questionAmount, questions.testQuestions.length); 
  List<String> correctAnswers = List.generate(questionAmount, (index) => questions.testQuestions[randomQuestionNumbers[index]]!.values.first);

  print(randomQuestionNumbers);
  
  for (int i = 0; i < questionAmount; i++) {
    askQuestion(questions, i, randomQuestionNumbers);
    answer = receiveAnswer();

    if (checkAnswers(answer)) {
      allAnswers.add(answer!);
    } else {
      do {
        answer = receiveAnswer();
      } while (!checkAnswers(answer));

      allAnswers.add(answer!);
    }
  }

  print("\n==================\n| TEST SONUÇLARI |\n==================");
  print("\nVerdiğiniz Cevaplar => ${allAnswers}");
  print("Cevap Anahtarı      => ${correctAnswers}");
  
  print("\nSonuç => %${calculateResult(allAnswers, correctAnswers, questionAmount)}\n");
  
}

void askQuestion(Questions questions, int index, List<int> randomQuestionNumbers) {
  print("\nSOUR -${index + 1}-\n${questions.testQuestions[randomQuestionNumbers[index]]!.keys.first}\n");
}

String? receiveAnswer() {
  String? answer;

  stdout.write("Cevap => ");
  answer = stdin.readLineSync()?.toUpperCase();
  return answer;
}

bool checkAnswers(String? answer) {
  if (answer == 'A' || answer == 'B' || answer == 'C' || answer == 'D') {
    return true;
  } else {
    print("\nLütfen şıklardan birisini seçiniz!\n");
    return false;
  }
}

String calculateResult(List<String> allAnswers, List<String> correctAnswers, int questionAmount){
  int score = 0;
  double result = 0;
  
  for (int i = 0; i < questionAmount; i++) {
    if(allAnswers[i] == correctAnswers[i]){
      score++;
    }
  }

  result = score/questionAmount*100;
  return result.toStringAsFixed(2);
}

List<int> generateRandomNumbers(int questionAmount, int allTheQuestionsAmount) {
  List<int> generatedNumbers = [];

  while (generatedNumbers.length < questionAmount) {
    int randomNumber = Random().nextInt(allTheQuestionsAmount) + 1;

    // sayı kontrolu. Aynısı yoksa ekliyor.
    if (!generatedNumbers.contains(randomNumber)) {
      generatedNumbers.add(randomNumber);
    }
  }

  return generatedNumbers;
}

class Questions {
  Map<int, Map<String, String>> testQuestions = {};

  Questions() {
    testQuestions[1] = {
      """
      \r"Sinekli Bakkal" Romanının Yazarı Aşağıdakilerden Hangisidir?\n
      A) Reşat Nuri Güntekin 
      B) Halide Edip Adıvar 
      C) Ziya Gökalp 
      D) Ömer Seyfettin
      """: 'B'
    };

    testQuestions[2] = {
      """
      \rAşağıda Verilen İlk Çağ Uygarlıklarından Hangisi Yazıyı İcat Etmiştir?\n
      A) Hititler 
      B) Elamlar 
      C) Sümerler 
      D) Urartular
      """: 'C'
    };

    testQuestions[3] = {
      """
      \rTsunami Felaketinde En Fazla Zarar Gören Güney Asya Ülkesi Aşağıdakilerden Hangisidir?\n
      A) Endonezya 
      B) Srilanka 
      C) Tayland 
      D) Hindistan
      """: 'A'
    };

    testQuestions[4] = {
      """
      \r2003 Yılında Euro Vizyon Şarkı Yarışmasında Ülkemizi Temsil Eden ve Yarışmada Birinci Gelen Sanatçımız Kimdir?\n
      A) Grup Athena
      B) Sertap Erener
      C) Şebnem Paker
      D) Ajda Pekkan
      """: 'B'
    };

    testQuestions[5] = {
      """
      \rMustafa Kemal Atatürk’ün Nüfusa Kayıtlı Olduğu İl Hangisidir?\n
      A) Bursa
      B) Ankara
      C) İstanbul
      D) Gaziantep
      """: 'D'
    };

    testQuestions[6] = {
      """
      \rAşağıdakilerden Hangisi Dünya Sağlık Örgütünün Kısaltılmış İsmidir?\n
      A) Uhw
      B) Unıcef
      C) Who
      D) Nato
      """: 'C'
    };

    testQuestions[7] = {
      """
      \rRomen Rakamında Hangi Sayı Yoktur?\n
      A) 0
      B) 50
      C) 100
      D) 1000
      """: 'A'
    };

    testQuestions[8] = {
      """
      \rBir Gün Kaç Saniyedir?\n
      A) 86000
      B) 88600
      C) 86400
      D) 84800
      """: 'C'
    };

    testQuestions[9] = {
      """
      \rÜç Büyük Dince Kutsal Sayılan Şehir Hangisidir?\n
      A) Mekke
      B) Kudüs
      C) Roma
      D) İstanbul
      """: 'B'
    };

    testQuestions[10] = {
      """
      \rHangi İlimizde Demiryolu Yoktur?\n
      A) Batman
      B) Kütahya
      C) Aydın
      D) Muğla
      """: 'D'
    };

    testQuestions[11] = {
      """
      \rHangi Ülkenin İki Tane Başkenti Vardır?\n
      A) Güney Afrika
      B) Senegal
      C) El Salvador
      D) Venezuela
      """: 'A'
    };

    testQuestions[12] = {
      """
      \rCevdet Bey ve Oğulları Eseri Kime Aittir?\n
      A) Orhan Pamuk
      B) Yahya Kemal Bayatlı
      C) Atilla İlhan
      D) Samipaşazade Sezai
      """: 'A'
    };

    testQuestions[13] = {
      """
      \rBir Sebepten Dolayı Tek Kulağına Küpe Takan Osmanlı Padişahı Kimdir?\n
      A) Kanuni Sultan Süleyman
      B) Yavuz Sultan Selim
      C) Orhan Bey
      D) Fatih Sultan Selim
      """: 'B'
    };

    testQuestions[14] = {
      """
      \rAşağıdaki Ülkelerden Hangisinin Nüfusu Daha Fazladır?\n
      A) İspanya
      B) Fransa
      C) İngiltere
      D) Almanya
      """: 'D'
    };

    testQuestions[15] = {
      """
      \rAspirinin Hammaddesi Nedir?\n
      A) Söğüt
      B) Köknar
      C) Kavak
      D) Meşe
      """: 'A'
    };

    testQuestions[16] = {
      """
      \r"Labirentin Gölgesinde" ve "Sembollerin Gölgesinde" adlı fantastik romanların yazarı kimdir?\n
      A) Haldun Taner
      B) Mehmet Rauf
      C) Yaşar Kemal
      D) Yahya Karakurt
      """: 'D'
    };

    testQuestions[17] = {
      """
      \rDaktilo kullanılarak yazılan ilk kitap hangisidir?\n
      A) Martin Eden
      B) Tom Sawyer'in Maceraları
      C) Gizemli Yabancı
      D) Hazreti Süleyman'ın Hazineleri
      """: 'B'
    };

    testQuestions[18] = {
      """
      \rBilge Kül Kağan hangi Türk devletinin kurucusudur?\n
      A) Göktürk Kağanlığı
      B) Uygur Kağanlığı
      C) Büyük Selçuklu Devleti
      D) Hazar Kağanlığı
      """: 'B'
    };

    testQuestions[19] = {
      """
      \rEn fazla sınır komşusuna sahip olan ülke hangisidir?\n
      A) Türkiye
      B) Brezilya
      C) Rusya
      D) Çin
      """: 'D'
    };

    testQuestions[20] = {
      """
      \rDünyanın en derin gölü hangisidir?\n
      A) Tanganika Gölü
      B) Vostok Gölü
      C) Van Gölü
      D) Baykal Gölü
      """: 'D'
    };
  }
}
