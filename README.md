# Minpro Task 1
# Chiqo Nanda Rial Pratama | 2409116046

# 📱 Daily Habit Tracker

## 📌 Deskripsi Aplikasi

Daily Habit Tracker adalah aplikasi mobile berbasis Flutter yang digunakan untuk membantu pengguna mencatat, mengelola, dan memantau kebiasaan sehari-hari.  
Aplikasi ini dirancang dengan tampilan modern dan minimalis agar pengguna dapat dengan mudah menambahkan, melihat, mengedit, dan menghapus kebiasaan mereka.

Aplikasi ini dibuat untuk memenuhi tugas Mini Project Praktikum Pemrograman Aplikasi Bergerak (PAB) dengan implementasi fitur CRUD serta navigasi multi-halaman.

---

## ✨ Fitur Aplikasi

Aplikasi ini memiliki fitur sebagai berikut:

### 1️⃣ Create (Tambah Data)
Pengguna dapat menambahkan kebiasaan baru dengan mengisi:
- Nama Kebiasaan
- Deskripsi
- Kategori

### 2️⃣ Read (Tampilkan Data)
Semua kebiasaan yang telah dibuat akan ditampilkan dalam bentuk card pada halaman utama.

### 3️⃣ Update (Edit Data)
Pengguna dapat mengedit kebiasaan yang sudah dibuat, termasuk:
- Mengubah nama kebiasaan
- Mengubah deskripsi
- Mengubah kategori

### 4️⃣ Delete (Hapus Data)
Pengguna dapat menghapus kebiasaan melalui:
- Tombol delete pada halaman edit
- Tombol delete pada card habit

### 5️⃣ Progress Tracking
Aplikasi menampilkan progress harian dalam bentuk:
- Persentase penyelesaian
- Progress bar

### 6️⃣ Multi Page Navigation
Aplikasi menggunakan navigasi antar halaman:
- Home Page
- Add Habit Page
- Edit Habit Page

---

## 🧩 Widget yang Digunakan

Berikut adalah widget utama yang digunakan dalam pengembangan aplikasi ini:

## 🧩 Penjelasan Widget yang Digunakan

Berikut adalah fungsi masing-masing widget yang digunakan dalam aplikasi Daily Habit Tracker:

- `MaterialApp`  
  Digunakan sebagai root aplikasi untuk mengatur tema, title, dan navigasi utama aplikasi.

- `Scaffold`  
  Menyediakan struktur dasar halaman seperti AppBar, body, dan FloatingActionButton.

- `AppBar`  
  Menampilkan judul halaman serta tombol navigasi seperti back, close, dan delete.

- `ListView.builder`  
  Digunakan untuk menampilkan daftar habit secara dinamis berdasarkan jumlah data yang ada.

- `Card`  
  Menampilkan setiap habit dalam bentuk tampilan kartu agar terlihat rapi dan terpisah.

- `Container`  
  Digunakan untuk mengatur layout, padding, warna, dan dekorasi seperti border radius.

- `Text`  
  Menampilkan teks seperti judul habit, kategori, dan label section.

- `TextField`  
  Digunakan untuk input data habit (nama kebiasaan, deskripsi, dan kategori).

- `ElevatedButton`  
  Tombol aksi utama seperti "Save Habit" dan "Update Habit".

- `FloatingActionButton`  
  Tombol tambah habit yang berada di halaman utama.

- `Checkbox`  
  Menandai apakah habit sudah selesai atau belum.

- `IconButton`  
  Digunakan untuk tombol edit dan delete pada setiap habit.

- `Wrap`  
  Mengatur layout kategori agar bisa tersusun rapi dan responsif dalam beberapa baris.

- `GestureDetector`  
  Digunakan untuk mendeteksi interaksi tap pada kategori yang dipilih.

- `Navigator`  
  Mengatur perpindahan halaman antar Home, Add Habit, dan Edit Habit.

- `LinearProgressIndicator`  
  Menampilkan progress penyelesaian habit dalam bentuk progress bar.

- `SingleChildScrollView`  
  Memungkinkan halaman form (Add/Edit Habit) dapat di-scroll ketika konten melebihi ukuran layar.

---

## 🛠 Teknologi yang Digunakan

- Flutter (Stable)
- Dart
- Android Studio / Chrome

---

## 📂 Struktur Folder

<img width="297" height="257" alt="image" src="https://github.com/user-attachments/assets/78556de4-5057-44ce-a06c-7ffe455e5a06" />



---

## 🎯 Tujuan Pembuatan

Aplikasi ini dibuat untuk memenuhi persyaratan tugas Mini Project dengan ketentuan:

- Implementasi CRUD
- Minimal 3 TextField dalam form
- Navigasi antar halaman
- Repository GitHub dengan README

---

## 📷 Dokumentasi Program

### Tampilan Home Page

<img width="476" height="1075" alt="image" src="https://github.com/user-attachments/assets/19913065-af64-48e9-9b48-e99602f06b9c" />

---

### Tampilan Tambah Kebiasaan

<img width="476" height="1075" alt="image" src="https://github.com/user-attachments/assets/a8c848e7-c613-4358-b6d5-62fd12d49e3f" />


---

### Tampilan Edit Kebiasaan

<img width="476" height="1075" alt="image" src="https://github.com/user-attachments/assets/3f7edf4c-4e1d-42bf-85bc-4db68d7420c2" />

---

### Tampialn Home Page setelah menambah Kebiasaan

<img width="476" height="1075" alt="image" src="https://github.com/user-attachments/assets/d90973aa-e73d-4dd5-b0cb-a8baaf3b0992" />
