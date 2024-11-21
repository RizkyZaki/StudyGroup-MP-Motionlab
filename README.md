# Panduan Git - Ringkasan Lengkap

Git adalah sistem kontrol versi terdistribusi yang banyak digunakan untuk mengelola kode sumber dalam pengembangan perangkat lunak.

---

## 1. Dasar-Dasar Git

- **Repository**: Direktori yang berisi file proyek Anda dan riwayat perubahan (dilacak oleh Git).
- **Version Control**: Pelacakan perubahan pada file dari waktu ke waktu.
- **Branch**: Versi paralel dari repository.
- **Commit**: Snapshot dari perubahan Anda.
- **Clone**: Menyalin repository yang sudah ada.

---

## 2. Menggunakan SSH dengan Git

SSH (Secure Shell) memungkinkan komunikasi yang aman antara sistem lokal Anda dan server remote.

### Langkah-Langkah Mengatur SSH

1. **Buat SSH Key**:
   ```bash
   ssh-keygen -t rsa -b 4096 -C "email_anda@example.com"
   ```
2. **Tambahkan Key ke SSH-Agent**:
   ```bash
   eval "$(ssh-agent -s)"
   ssh-add ~/.ssh/id_rsa
   ```
3. **Tambahkan Public Key ke GitHub/GitLab**:

   - Salin key: `cat ~/.ssh/id_rsa.pub`
   - Tempelkan ke pengaturan SSH penyedia Git Anda.

4. **Tes Koneksi SSH**:
   ```bash
   ssh -T git@github.com
   ```

---

## 3. Menggunakan HTTPS dengan Git

HTTPS adalah metode lain untuk berinteraksi dengan repository remote. HTTPS menggunakan username dan personal access token untuk autentikasi.

### Langkah-Langkah Menggunakan HTTPS

1. Clone atau berinteraksi dengan repository menggunakan URL HTTPS (misalnya: `https://github.com/user/repo.git`).
2. Simpan kredensial menggunakan pengelola kredensial atau masukkan saat diminta.

---

## 4. Perintah-Perintah Git yang Umum

### Pengaturan Repository

- Inisialisasi repository:
  ```bash
  git init
  ```
- Clone repository:
  ```bash
  git clone <repo_url>
  ```

### Alur Kerja Dasar

- Cek status repository:
  ```bash
  git status
  ```
- Stage perubahan:
  ```bash
  git add <file_or_directory>
  ```
- Commit perubahan:
  ```bash
  git commit -m "Pesan commit Anda"
  ```
- Push perubahan ke remote:
  ```bash
  git push origin <branch_name>
  ```
- Pull pembaruan dari remote:
  ```bash
  git pull origin <branch_name>
  ```

### Branching

- Buat branch baru:
  ```bash
  git branch <branch_name>
  ```
- Pindah ke branch:
  ```bash
  git checkout <branch_name>
  ```
- Buat dan pindah ke branch baru:
  ```bash
  git checkout -b <branch_name>
  ```
- Merge branch:
  ```bash
  git merge <branch_name>
  ```

### Melihat Riwayat

- Lihat riwayat commit:
  ```bash
  git log
  ```
- Lihat riwayat commit singkat:
  ```bash
  git log --oneline
  ```

### Membatalkan Perubahan

- Unstage perubahan:
  ```bash
  git reset <file>
  ```
- Kembali ke commit sebelumnya:
  ```bash
  git revert <commit_hash>
  ```

### Berinteraksi dengan Repository Remote

- Tambahkan repository remote:
  ```bash
  git remote add origin <repo_url>
  ```
- Lihat repository remote:
  ```bash
  git remote -v
  ```
- Hapus repository remote:
  ```bash
  git remote remove <name>
  ```

---

## 5. Konsep Lanjutan Git

- **Stashing**: Menyimpan perubahan sementara.
  ```bash
  git stash
  git stash pop
  ```
- **Rebasing**: Mengintegrasikan perubahan dari satu branch ke branch lain.
  ```bash
  git rebase <branch_name>
  ```
- **Tags**: Menandai commit tertentu.
  ```bash
  git tag -a <tag_name> -m "Pesan"
  ```

---

## 6. Praktik Terbaik

1. Gunakan pesan commit yang jelas dan bermakna.
2. Kerjakan fitur baru di branch terpisah.
3. Jaga branch utama tetap bersih dan stabil.
4. Sinkronisasi secara teratur dengan repository remote.

---

### Sumber Belajar Tambahan

- [Dokumentasi Git](https://git-scm.com/doc)
- [Panduan SSH GitHub](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)
