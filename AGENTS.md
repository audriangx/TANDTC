# AGENTS.md – Hướng dẫn cho agent làm UI FPT.dPLAT

`AGENTS.md` nói cách **xây** dự án. `DESIGN.md` nói giao diện **trông** thế nào. Đọc `design-md/fpt-dplat/DESIGN.md` trước khi viết CSS.

## Nhiệm vụ
Áp dụng theme "FPT Signature" (`data-theme="fpt"`) cho toàn bộ nền tảng. Tham chiếu: `demo/glossary.html`, `design-md/fpt-dplat/preview.html`.

## Quy tắc bắt buộc
1. Chỉ dùng token trong `DESIGN.md`. Cần giá trị mới thì thêm vào `DESIGN.md` trước.
2. Khai báo token bằng CSS variables ở `:root`, không hard-code hex trong component.
3. Nút chính cao 32px, radius 8px. Nút phụ và select cao 30px.
4. Font: DM Sans (nội dung), Space Grotesk (hiển thị), Be Vietnam Pro (dự phòng).
5. Icon line 18px, stroke 1.7, không tô nền.
6. Mỗi đường line một màu, không neon, không tô nền lớn bằng cam.
7. Giữ nguyên nội dung tiếng Việt và logic hiện có; chỉ đổi giao diện.
8. Theme IBM và Apple vẫn phải chạy song song.

## Không được làm
- Đổi cấu trúc dữ liệu hoặc API.
- Thêm thư viện UI nặng khi CSS thuần làm được.
- Dùng font ngoài bộ đã chọn.

## Checklist trước khi báo xong
- [ ] Nút chính 32px, radius 8px, gradient `#0b2a5c → #1a4a9c`, viền trong cam mảnh
- [ ] Sidebar navy có icon, mục đang chọn có vạch cam và icon cam
- [ ] Thẻ thống kê trắng, vạch cam 36×2px, số Space Grotesk 46px
- [ ] Tag dạng viền: Đã duyệt `#12703a`, Chờ duyệt `#0a56c4`, Nháp `#b4470a`
- [ ] Tương phản đạt WCAG AA (chữ cam trên nền trắng dùng `#b4470a`)
- [ ] Focus bàn phím nhìn thấy được
- [ ] Ổn ở 1440px và 390px; có bản dark nếu bật
