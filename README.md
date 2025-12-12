# PayRoll Desktop Apps 💰

![License](https://img.shields.io/badge/license-GPLv3-blue.svg)
![Java](https://img.shields.io/badge/language-Java-orange.svg)
![NetBeans](https://img.shields.io/badge/IDE-NetBeans-green.svg)

**PayRoll Desktop Apps** adalah aplikasi desktop berbasis Java yang dirancang untuk mempermudah proses administrasi karyawan, pencatatan absensi, dan perhitungan gaji secara efisien. Aplikasi ini dibangun menggunakan NetBeans IDE dan database MySQL.

## 🌟 Fitur Utama

* **Sistem Login Aman:** Validasi username dan password dengan proteksi akses menu.
* **Menu Navigasi Interaktif:** Menu utama terkunci sebelum login dan terbuka otomatis setelah login sukses.
* **Manajemen Data Karyawan (CRUD):** Input, edit, cari, dan hapus data karyawan.
* **Pencatatan Absensi:** Form absensi terintegrasi dengan pencarian NIK otomatis.
* **Manajemen Jabatan:** Pengaturan data jabatan dan gaji pokok.
* **Laporan:** Fitur cetak laporan (Karyawan, Absensi, Penggajian).

## 🛠️ Teknologi yang Digunakan

* **Bahasa Pemrograman:** Java (JDK 8 atau lebih baru).
* **GUI Framework:** Java Swing (JFrame).
* **IDE:** Apache NetBeans.
* **Database:** MySQL (via XAMPP/WAMP).
* **Libraries:**
    * `mysql-connector-java` (JDBC Driver)
    * `jcalendar` (Untuk input tanggal)

## 🚀 Cara Menjalankan Project (Instalasi)

Ikuti langkah-langkah ini untuk menjalankan aplikasi di komputer Anda:

### 1. Persiapan Database
1.  Pastikan XAMPP (Apache & MySQL) sudah berjalan.
2.  Buka **phpMyAdmin** (`http://localhost/phpmyadmin`).
3.  Buat database baru dengan nama `payroll_db` (atau sesuaikan dengan file SQL).
4.  Import file database yang ada di folder `database/payroll_db.sql`.

### 2. Konfigurasi Project
1.  Buka **NetBeans IDE**.
2.  Pilih **File > Open Project**, lalu arahkan ke folder hasil download/clone ini.
3.  Buka file `src/koneksi/Config.java` (atau `Koneksi.java`).
4.  Sesuaikan username dan password database Anda:
    ```java
    // Contoh konfigurasi
    DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll_db", "root", "");
    ```

### 3. Run Aplikasi
1.  Klik kanan pada project > **Clean and Build**.
2.  Klik tombol **Run** (Segitiga Hijau) atau tekan `F6`.

---

## 🔐 Akun Demo (Default)

Jika database sudah di-import, gunakan akun berikut untuk login pertama kali:

* **Username:** `admin`
* **Password:** `admin`

*(Disarankan untuk membuat user baru atau mengubah password setelah berhasil masuk).*

---

## 🤝 Kontribusi

Project ini bersifat Open Source. Jika Anda ingin berkontribusi:
1.  Fork repository ini.
2.  Buat branch fitur baru (`git checkout -b fitur-baru`).
3.  Commit perubahan Anda (`git commit -m 'Menambah fitur X'`).
4.  Push ke branch (`git push origin fitur-baru`).
5.  Buat Pull Request.

## 📄 Lisensi

Project ini didistribusikan di bawah lisensi **GNU General Public License v3.0 (GPLv3)**.
Lihat file [LICENSE](LICENSE) untuk detail lebih lanjut. Anda bebas menggunakan, memodifikasi, dan mendistribusikan ulang software ini selama menyertakan source code asli.

---
**Dibuat dengan ❤️ oleh [Ryu696900]**
