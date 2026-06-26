# 🚗 Nội Bài Car – Ứng dụng Quản lý Booking

Ứng dụng mobile PWA quản lý booking xe Nội Bài, chạy hoàn toàn trên trình duyệt, hỗ trợ cài đặt như app native trên iOS và Android.

## ✨ Tính năng

- 📋 Tạo & quản lý booking xe
- 💰 Tính giá, quản lý thanh toán & điểm thưởng
- 📊 Báo cáo doanh thu theo kỳ / room / đối tác
- 📤 Xuất Excel (CSV)
- 🔔 Tạo tin nhắn tự động (Zalo / SMS)
- 📱 Cài đặt như app trên điện thoại (PWA)
- 🔄 Hoạt động offline sau lần đầu tải

## 🚀 Cách dùng nhanh

### Xem trực tuyến (GitHub Pages)
> Sau khi push lên GitHub, vào **Settings → Pages → Source: main / root** → Save  
> Truy cập: `https://<username>.github.io/<repo-name>/`

### Cài đặt như app trên điện thoại
- **iOS (Safari):** Mở link → Share → "Add to Home Screen"
- **Android (Chrome):** Mở link → Menu (⋮) → "Add to Home Screen"

## 📂 Cấu trúc thư mục

```
noibaicar/
├── index.html       # Toàn bộ app (HTML + CSS + JS)
├── manifest.json    # PWA manifest
├── sw.js            # Service Worker (offline)
├── icons/
│   ├── icon-192.png
│   └── icon-512.png
└── README.md
```

## 🛠 Deploy lên GitHub Pages

```bash
git init
git add .
git commit -m "🚗 Initial release – Nội Bài Car PWA"
git branch -M main
git remote add origin https://github.com/<username>/<repo>.git
git push -u origin main
```

Sau đó bật GitHub Pages trong Settings của repo.

---
Made with ❤️ for Nội Bài Car team
