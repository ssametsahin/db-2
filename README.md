# Online Test Platformu Veritabanı Şeması
![](https://img.shields.io/badge/MySQL-00000F?style=for-the-badge&logo=mysql&logoColor=white)
Bu şema MySQL veritabanı ile oluşturulmuştur.
#### **MySQL**
MySQL bir ilişkisel veri tabanı olarak, 1995 yılında kullanıma sürülen en popüler açık kaynaklı ilişkisel veri tabanı yönetim sisteminden biridir.Güçlü bir veri tabanı yönetim sistemi olan MySQL veri tabanı gerektiren hemen hemen her ortamda rahatlıkla kullanılabilir. Ama özellikle web sunucularında en çok kullanılan veritabanıdır, asp, php gibi birçok web programlama dili ile kullanılabilir.

Daha fazla bilgi için, [tıklayınız](https://www.mysql.com/)

## Tablo Açıklamaları

### 1. `users`
- Kullanıcı bilgilerini saklar.
- Kolonlar:
  - `id`: Benzersiz kullanıcı kimliği.
  - `name`: Kullanıcı adı.
  - `email`: Kullanıcı e-posta adresi.
  - `password`: Kullanıcı şifresi (hashed).
  - `role_id`: Kullanıcının rolü (foreign key).
  - `class_id`: Kullanıcının sınıfı (foreign key).

### 2. `roles`
- Sistemdeki kullanıcı rollerini tanımlar (Öğretmen, Öğrenci, vb.).
- Kolonlar:
  - `id`: Benzersiz rol kimliği.
  - `name`: Rol adı.

### 3. `classes`
- Sınıfları temsil eder (örneğin, 5. sınıf, 6. sınıf).
- Kolonlar:
  - `id`: Benzersiz sınıf kimliği.
  - `name`: Sınıf adı.

### 4. `subjects`
- Dersleri temsil eder (örneğin, Matematik, Fen Bilimleri).
- Kolonlar:
  - `id`: Benzersiz ders kimliği.
  - `name`: Ders adı.

### 5. `topics`
- Derslerin konularını tanımlar.
- Kolonlar:
  - `id`: Benzersiz konu kimliği.
  - `name`: Konu adı.
  - `subject_id`: Konunun ait olduğu ders (foreign key).

### 6. `tests`
- Oluşturulan testleri saklar.
- Kolonlar:
  - `id`: Benzersiz test kimliği.
  - `name`: Test adı.
  - `topic_id`: Testin ait olduğu konu (foreign key).

### 7. `questions`
- Test sorularını içerir.
- Kolonlar:
  - `id`: Benzersiz soru kimliği.
  - `question_text`: Soru metni.
  - `test_id`: Soruya ait test (foreign key).

### 8. `answers`
- Soruların cevaplarını içerir.
- Kolonlar:
  - `id`: Benzersiz cevap kimliği.
  - `question_id`: Cevabın ait olduğu soru (foreign key).
  - `option-a(b-c-d)`: Cevap seçeneği.
  - `correct_answer`: Doğru cevap olup olmadığını belirtir.

### 9. `results`
- Öğrencilerin test sonuçlarını tutar.
- Kolonlar:
  - `id`: Benzersiz sonuç kimliği.
  - `student_id`: Öğrenci kimliği (foreign key).
  - `test_id`: Test kimliği (foreign key).
  - `correct_answers`: Doğru cevap sayısı.
  - `wrong_answers`: Yanlış cevap sayısı.

### 10. `logs`
- Sistem hareketlerini kaydeder.
- Kolonlar:
  - `id`: Benzersiz log kimliği.
  - `user_id`: İşlemi yapan kullanıcı (foreign key).
  - `action`: Yapılan işlem.
  - `description`: İşlem açıklaması.

### Diğer Tablolar
- `subject_teachers` ve `subject_students`: Ders ile öğretmen/öğrenci eşleştirmelerini tutar.
- `class_teachers` ve `class_students`: Sınıf ile öğretmen/öğrenci eşleştirmelerini tutar.
- `notifications`: Kullanıcı bildirimlerini saklar.
- `test_schedules` ve `test_history`: Test planlaması ve geçmişi için kullanılır.

## Şema Diyagramı
![Database Schema](https://github.com/user-attachments/assets/b07acb40-066d-4049-b48f-3c2eabb739ed)


Bu şema, ilişkileri ve tabloların birbirleriyle olan bağlantılarını göstermektedir.

## Özet
Bu şema, online test platformunun temel işlevlerini desteklemek için tasarlanmıştır. Kullanıcı rolleri, sınıflar, dersler, testler ve sonuçlar arasında güçlü bir ilişki bulunmaktadır. Sistem bu ilişkiler sayesinde esnek bir yapı sunmaktadır.
## Yazar
`Samet Şahin`
<br>

