# Đóng góp cho FPT.dPLAT DESIGN.md

Cảm ơn bạn đã góp phần giữ giao diện FPT.dPLAT nhất quán.

## Bạn có thể làm gì
- **Sửa file hiện có:** sai màu, thiếu token, mô tả chưa rõ.
- **Báo lỗi:** preview hiển thị sai so với `DESIGN.md`.
- **Đề xuất component mới:** ví dụ modal, toast, form, biểu đồ.

## Quy trình
1. Mở issue trước để trao đổi ý tưởng (dùng mẫu trong `.github/ISSUE_TEMPLATE.md`).
2. Fork repo, tạo nhánh `fix/<ten-ngan>` hoặc `feat/<ten-ngan>`.
3. Sửa `design-md/fpt-dplat/DESIGN.md` **và** cập nhật `preview.html`, `preview-dark.html` cho khớp.
4. Mở Pull Request, đính kèm ảnh chụp trước/sau.

## Quy tắc
- Mọi màu, cỡ chữ, kích thước phải có trong `DESIGN.md` trước khi dùng trong code.
- Giữ đúng 9 mục theo cấu trúc chuẩn.
- Không thêm màu neon, không dải nhiều màu trong một đường line.
- Kiểm tra tương phản chữ/nền đạt WCAG AA.
- Viết ngắn, dùng bảng khi có thể.

## Checklist PR
- [ ] `DESIGN.md` đã cập nhật
- [ ] `preview.html` và `preview-dark.html` khớp
- [ ] `demo/glossary.html` vẫn hiển thị đúng
- [ ] Đã chụp ảnh trước/sau
