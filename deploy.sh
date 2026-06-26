#!/bin/bash
# ============================================================
# NOIBAICAR – Script deploy lên GitHub Pages
# Chạy file này bằng Git Bash trên Windows
# ============================================================

echo ""
echo "🚗 Nội Bài Car – Deploy lên GitHub Pages"
echo "=========================================="
echo ""

# Nhập thông tin GitHub
read -p "👤 GitHub username của bạn: " GH_USER
read -p "📦 Tên repo (vd: noibaicar): " GH_REPO

echo ""
echo "📋 Cấu hình:"
echo "   URL sẽ là: https://${GH_USER}.github.io/${GH_REPO}/"
echo ""
read -p "✅ Tiếp tục? (y/n): " CONFIRM
if [[ "$CONFIRM" != "y" && "$CONFIRM" != "Y" ]]; then
  echo "❌ Đã huỷ."
  exit 0
fi

# Khởi tạo git nếu chưa có
if [ ! -d ".git" ]; then
  echo ""
  echo "🔧 Khởi tạo git repository..."
  git init
  git branch -M main
fi

# Add và commit
echo ""
echo "📁 Thêm files..."
git add .

echo "💾 Tạo commit..."
git commit -m "🚗 Deploy Nội Bài Car PWA v1.0" 2>/dev/null || git commit --allow-empty -m "🚗 Deploy Nội Bài Car PWA v1.0"

# Remote
REMOTE_URL="https://github.com/${GH_USER}/${GH_REPO}.git"
echo ""
echo "🔗 Remote: $REMOTE_URL"

# Xoá remote cũ nếu có
git remote remove origin 2>/dev/null || true
git remote add origin "$REMOTE_URL"

# Push
echo ""
echo "🚀 Đang push lên GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
  echo ""
  echo "✅ Push thành công!"
  echo ""
  echo "👉 BƯỚC TIẾP THEO – Bật GitHub Pages:"
  echo "   1. Vào https://github.com/${GH_USER}/${GH_REPO}/settings/pages"
  echo "   2. Source: chọn 'Deploy from a branch'"
  echo "   3. Branch: main / (root) → Save"
  echo "   4. Chờ ~1-2 phút rồi vào:"
  echo "      https://${GH_USER}.github.io/${GH_REPO}/"
  echo ""
else
  echo ""
  echo "❌ Push thất bại."
  echo "   Hãy kiểm tra:"
  echo "   - Repo '${GH_REPO}' đã được tạo trên GitHub chưa?"
  echo "   - Bạn đã đăng nhập GitHub trên máy chưa?"
  echo "   - Nếu dùng HTTPS, hãy tạo Personal Access Token tại:"
  echo "     https://github.com/settings/tokens"
fi
