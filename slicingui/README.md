# Flutter Widgets

Flutter Widgets adalah elemen dasar dari setiap aplikasi Flutter. Proyek ini difokuskan pada implementasi berbagai **widgets** yang digunakan untuk membangun antarmuka pengguna (UI) secara efisien.

## 📚 **Pengantar Widget Flutter**

Widgets adalah elemen visual yang digunakan untuk membuat UI di Flutter. Semua elemen di Flutter, seperti teks, gambar, tombol, hingga tata letak kompleks, adalah widget. Flutter mendukung dua jenis widget:

- **StatelessWidget**: Tidak memiliki state, bersifat statis.
- **StatefulWidget**: Memiliki state yang dapat berubah selama aplikasi berjalan.

---

## 🌟 **Widget yang Digunakan dalam Proyek Ini**

### 1. **Scaffold**

- Fungsi: Merupakan struktur dasar untuk aplikasi.
- Properti Utama:
  - `appBar`: Menampilkan AppBar di bagian atas.
  - `body`: Bagian utama yang berisi konten.
  - `bottomNavigationBar`: Menampilkan navigasi di bagian bawah.

### 2. **AppBar**

- Fungsi: Menampilkan bilah atas untuk judul dan tindakan.
- Properti Utama:
  - `title`: Menampilkan teks atau widget di AppBar.
  - `actions`: Menambahkan ikon atau tombol di sisi kanan.

### 3. **Column & Row**

- Fungsi: Membuat tata letak secara vertikal (Column) atau horizontal (Row).
- Properti Utama:
  - `mainAxisAlignment`: Mengatur posisi widget di sepanjang sumbu utama.
  - `crossAxisAlignment`: Mengatur posisi widget di sepanjang sumbu sekunder.
  - `children`: Daftar widget yang ditampilkan.

### 4. **Container**

- Fungsi: Widget serbaguna untuk dekorasi, padding, margin, dll.
- Properti Utama:
  - `color`: Memberikan warna latar belakang.
  - `margin` & `padding`: Memberikan ruang di luar atau di dalam konten.
  - `child`: Widget di dalam Container.

### 5. **GridView**

- Fungsi: Membuat tampilan grid (kotak-kotak).
- Properti Utama:
  - `gridDelegate`: Menentukan pola grid.
  - `children`: Daftar widget yang ditampilkan dalam grid.

### 6. **ListView**

- Fungsi: Membuat daftar yang dapat digulir.
- Properti Utama:
  - `children`: Daftar widget yang ditampilkan.
  - `scrollDirection`: Arah gulir (vertikal/horizontal).

### 7. **Card**

- Fungsi: Membuat tampilan seperti kartu dengan bayangan dan sudut melengkung.
- Properti Utama:
  - `child`: Widget di dalam kartu.
  - `elevation`: Memberikan efek bayangan.

### 8. **Text**

- Fungsi: Menampilkan teks.
- Properti Utama:
  - `style`: Mengatur gaya teks (font, ukuran, warna, dll).

### 9. **Image**

- Fungsi: Menampilkan gambar.
- Properti Utama:
  - `image`: Sumber gambar (assets, network).
  - `fit`: Menentukan bagaimana gambar diatur dalam ruang.

### 10. **Button Widgets**

#### ElevatedButton

- Fungsi: Tombol dengan efek elevasi.
- Properti Utama:
  - `onPressed`: Fungsi saat tombol ditekan.
  - `child`: Konten tombol.

#### IconButton

- Fungsi: Tombol berbentuk ikon.
- Properti Utama:
  - `icon`: Ikon yang ditampilkan.
  - `onPressed`: Fungsi saat ditekan.

### 11. **Stack**

- Fungsi: Menumpuk widget di atas satu sama lain.
- Properti Utama:
  - `children`: Daftar widget yang ditumpuk.

---

## 🔨 **Konsep Widget Reusable**

- **Reusable Widget**: Widget yang dibuat agar bisa digunakan kembali di beberapa tempat.
- Contoh:

  ```dart
  class ProductCard extends StatelessWidget {
    final String title;
    final double price;

    const ProductCard({required this.title, required this.price});

    @override
    Widget build(BuildContext context) {
      return Card(
        child: Column(
          children: [
            Text(title),
            Text('\$${price.toString()}'),
          ],
        ),
      );
    }
  }
  ```

---

## 📌 **Tips Penting dalam Menggunakan Widgets**

1. Gunakan **StatelessWidget** jika widget tidak membutuhkan state.
2. Untuk performa, gunakan widget seperti `ListView.builder()` untuk daftar dinamis.
3. Kombinasikan widget tata letak seperti `Row`, `Column`, dan `Stack` untuk membuat desain yang kompleks.
4. Gunakan widget dekorasi seperti `Container` untuk memperindah UI.

---

**Author**: frisk zach  
**License**: MIT
