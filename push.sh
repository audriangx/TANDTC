#!/usr/bin/env bash
# Đẩy repo lên GitHub. Cách dùng: ./push.sh <ten-github-user>
set -e
USER_NAME="${1:?Nhập tên GitHub user, ví dụ: ./push.sh fpt-design}"
REPO="fpt-dplat-design-md"
git init -b main
git add .
git commit -m "Add FPT.dPLAT DESIGN.md"
if command -v gh >/dev/null 2>&1; then
  gh repo create "$USER_NAME/$REPO" --public --source=. --push
else
  git remote add origin "https://github.com/$USER_NAME/$REPO.git"
  git push -u origin main
fi
echo "Xong. Bật Pages: Settings > Pages > Deploy from a branch > main / (root)"
echo "Link: https://$USER_NAME.github.io/$REPO/"
