# Design System Analysis: FPT.dPLAT

Nền tảng dữ liệu doanh nghiệp. Khung navy trầm, nội dung sáng, điểm nhấn cam FPT, đọc nhanh và tiết chế.

## Usage

Đặt file này ở thư mục gốc dự án, cạnh `AGENTS.md`. Khi làm UI, yêu cầu agent: "Đọc DESIGN.md và dùng đúng màu, font, kích thước, kiểu nút trong đó."

Demo tham chiếu: `fpt-dplat-glossary.html` (theme `data-theme="fpt"`).

---

## 1. Visual Theme & Atmosphere

**Tinh thần:** "Navy làm khung, cam làm điểm nhấn." Giao diện dữ liệu doanh nghiệp nhưng có chất premium: khung tối bao quanh vùng làm việc sáng, thẻ trắng sạch, đường kẻ mảnh, bóng đổ dài và mờ.

**Mật độ:** vừa phải, thiên về gọn. Nút và ô nhập cao 30–32px như công cụ dữ liệu (theo Databricks), khoảng thở rộng ở thẻ và panel.

**Nguyên tắc**
- Navy là khung (header, sidebar), không tràn vào vùng nội dung.
- Cam chỉ dùng cho: mục đang chọn, vạch nhấn, gạch chân tab, tag "Nháp". Không tô nền lớn bằng cam.
- Mỗi đường line chỉ một màu. Không dải nhiều màu.
- Không neon, không cyan bão hòa. Gradient chỉ trong cùng một họ màu.
- Hoa văn, vệt sáng nền chỉ chìm, không lấn nội dung.

**Từ khóa:** navy trầm · cam FPT · thẻ trắng · hairline · điềm tĩnh.

## 2. Color Palette & Roles

| Tên | Hex | Vai trò |
|---|---|---|
| navy-950 | `#050e22` | Đáy sidebar |
| navy-900 | `#081833` | Đỉnh sidebar |
| navy-header | `#06112a` (α .94) | Nền header |
| navy-700 | `#0b2a5c` | Đầu đậm gradient nút, avatar |
| blue-600 | `#1a4a9c` | Đầu sáng gradient nút |
| blue-link | `#0a56c4` | Liên kết, focus, tag "Chờ duyệt" |
| orange-500 | `#f37021` | Mục đang chọn, vạch nhấn, gạch chân tab, tag "Nháp" |
| orange-400 | `#ff9a55` | Đầu sáng gradient cam |
| orange-300 | `#ffb37a` | Chữ logo (đầu sáng) |
| green-700 | `#12703a` | Tag "Đã duyệt" |
| warn-700 | `#b4470a` | Chữ cảnh báo, tag "Nháp" trên nền sáng |
| danger | `#c62828` | Nút Xóa |
| ink | `#06284d` | Tiêu đề, số thống kê |
| fg | `#0f1f3a` | Chữ nội dung |
| mute | `#64728a` | Chữ phụ, nhãn cột |
| line | `#e1e7f0` | Viền thẻ, kẻ bảng |
| surface | `#f3f4f7` | Nền vùng nội dung |
| card | `#ffffff` | Thẻ, panel |
| tint-orange | `#fff4ea` · `#fff5ed` · `#fffaf6` | Dòng đang chọn, thẻ chọn, nền panel chi tiết |
| glow-blue | `#dbe7fb` | Vệt sáng mờ góc trên nền nội dung |

**Gradient**
- Nút chính: `linear-gradient(135deg, #0b2a5c, #1a4a9c)`
- Sidebar: `linear-gradient(180deg, #081833, #050e22)`
- Logo: `linear-gradient(90deg, #ffb37a, #f37021 60%, #ffb37a)` áp lên chữ
- Mục sidebar đang chọn: `linear-gradient(90deg, rgba(243,112,33,.16), rgba(243,112,33,.02))`

### Dark surfaces (preview-dark.html)

| Tên | Hex | Vai trò |
|---|---|---|
| surface-dark | `#050e22` | Nền trang |
| card-dark | `#0c1f45` | Thẻ, panel |
| line-dark | `rgba(255,255,255,.10)` | Viền, kẻ bảng |
| fg-dark | `#e6edf9` | Chữ nội dung |
| ink-dark | `#f4f7fc` | Tiêu đề, số |
| mute-dark | `#93a4c4` | Chữ phụ |
| link-dark | `#7fb0ff` | Liên kết |
| green-dark | `#5fd08a` | Đã duyệt |
| warn-dark | `#ffa566` | Nháp |
| danger-dark | `#ff8a80` | Xóa |

Cam giữ nguyên `#f37021`; nền chọn dùng `rgba(243,112,33,.14)`.

## 3. Typography Rules

**Họ chữ**
- Nội dung: **DM Sans** → Be Vietnam Pro → system-ui (Be Vietnam Pro bảo đảm đủ dấu tiếng Việt)
- Hiển thị: **Space Grotesk** → DM Sans (tiêu đề trang, số thống kê, tên thuật ngữ, tab, tiêu đề panel)

| Vai trò | Font | Cỡ | Weight | Ghi chú |
|---|---|---|---|---|
| Page title (H1) | Space Grotesk | 34px | 700 | letter-spacing -0.045em, line-height 1.05 |
| Stat number | Space Grotesk | 46px | 700 | letter-spacing -0.06em, màu ink |
| Panel title | Space Grotesk | 19px | 700 | -0.02em |
| Detail title | Space Grotesk | 22px | 700 | -0.03em |
| Term name (bảng) | Space Grotesk | 15px | 600 | |
| Tab | Space Grotesk | 13.5px | 600 | |
| Body | DM Sans | 14px | 400 | line-height 1.4 |
| Nav item | DM Sans | 13.5px | 500 | |
| Button | DM Sans | 13.5px | 600 | |
| Select / mini button | DM Sans | 13px | 400 | |
| Table header | DM Sans | 12.5px | 500 | màu mute |
| Tag | DM Sans | 12px | 500 | |
| Caption / sub | DM Sans | 12–14.5px | 400 | màu mute |

Quy tắc: dùng câu chữ thường (sentence case), không viết hoa toàn bộ. Dòng văn bản dài không quá 80 ký tự.

## 4. Component Stylings

### Buttons
| Loại | Kích thước | Kiểu |
|---|---|---|
| Primary | cao **32px**, padding ngang 14px, radius **8px** | Gradient navy, chữ trắng 13.5px/600, viền trong cam `rgba(243,112,33,.6)` 1px, bóng `0 10px 20px -12px rgba(11,42,92,.8)` |
| Secondary (Sửa) | cao 30px, radius 8px | Nền trắng, viền `#d5ddea`, chữ fg |
| Danger (Xóa) | cao 30px, radius 8px | Như secondary, chữ `#c62828` |

Trạng thái: hover sáng thêm ~10% (`filter: brightness(1.1)`); secondary hover nền `#fff4ea` + viền cam. Focus: `3px solid rgba(10,86,196,.35)`.

### Select
Cao 30px, radius 8px, nền trắng, viền `#d5ddea`, chữ 13px.

### Cards
- **Thẻ thống kê:** nền trắng, viền 1px `line`, radius 16px, padding 22px 24px, bóng `0 14px 34px -22px rgba(11,31,68,.35)`. Vạch cam 36×2px ở góc trên trái. Nhãn mute, số Space Grotesk 46px màu ink.
- **Panel:** nền trắng, viền 1px `line`, radius 16px, bóng `0 20px 44px -28px rgba(11,31,68,.4)`.
- **Thẻ bộ thuật ngữ (đang chọn):** nền `linear-gradient(90deg,#fff5ed,#fff)`, viền 1px `line` + viền trái 3px cam, radius 12px.

### Sidebar
Nền gradient navy, viền phải `rgba(243,112,33,.18)`. Mục cao 32px, radius 10px, icon 18px. Nhãn nhóm màu `#8fa3c7`, 11.5px.
- Thường: chữ `#c9d4e8`, icon `#8fa3c7`.
- Đang chọn: chữ trắng, icon cam, nền gradient cam mờ, vạch cam 3px sát mép trái.

### Header
Cao 48px, nền navy-header kính mờ (`blur(16px)`), viền dưới `rgba(255,122,26,.35)`. Logo gradient cam. Ô tìm kiếm nền `rgba(255,255,255,.07)`, viền `rgba(255,255,255,.12)`, radius 12px.

### Tabs
Chữ mute, mục chọn màu ink + gạch chân cam 2px. Padding 10px 12px.

### Tags (trạng thái)
Dạng viên thuốc, nền trong suốt, viền 1px cùng màu chữ, chấm tròn 6px đầu tag.
- Đã duyệt: `#12703a` · Chờ duyệt: `#0a56c4` · Nháp: `#b4470a`

### Table
Tiêu đề không nền, chữ mute 12.5px, kẻ dưới `line`. Ô padding 10px 16px. Dòng hover nền `rgba(0,0,0,.025)`, dòng chọn nền `#fff4ea`.

### Icons
Line icon 24×24, `stroke: currentColor`, `stroke-width: 1.7`, cap/join tròn, không tô nền. Cỡ hiển thị 18px.

## 5. Layout Principles

- **Khung:** header 48px cố định trên; sidebar 232px trái; vùng nội dung cuộn riêng.
- **Vùng nội dung:** padding 28px 32px 40px. Nền `surface` + vệt sáng `glow-blue` góc trên phải.
- **Lưới:** thống kê 4 cột, gap 16px. Khối chính 2 cột `320px | 1fr`, gap 16px. Trong panel phải: bảng `1fr` + chi tiết `260px`.
- **Spacing:** đơn vị cơ sở 4px; thang 4 · 8 · 12 · 16 · 20 · 24 · 32.
- **Căn lề:** trái. Số và nhãn trong thẻ căn trái. Cột thao tác căn phải.
- **Khoảng trắng:** giữ rộng quanh thẻ, gọn bên trong bảng.

## 6. Depth & Elevation

| Mức | Dùng cho | Bóng |
|---|---|---|
| 0 | Nền, bảng | không bóng |
| 1 | Thẻ thống kê | `0 14px 34px -22px rgba(11,31,68,.35)` |
| 2 | Panel | `0 20px 44px -28px rgba(11,31,68,.4)` |
| 3 | Nút chính | `0 10px 20px -12px rgba(11,42,92,.8)` |

Bóng luôn dài, mờ, tông navy, có offset âm để không viền quanh. Header và sidebar dùng blur/gradient thay cho bóng.

## 7. Do's and Don'ts

**Do**
- Dùng token ở mục 2, 3, 4; cần giá trị mới thì thêm vào file này trước.
- Giữ nút chính 32px, radius 8px.
- Để cam là điểm nhấn hiếm, mỗi màn tối đa vài chỗ.
- Dùng icon line cùng nét 1.7.
- Kiểm tra tương phản chữ/nền đạt WCAG AA, đặc biệt chữ cam trên nền trắng (dùng `#b4470a` cho chữ, không dùng `#f37021`).

**Don't**
- Không dải nhiều màu (xanh + cam + lá) trong cùng một đường line.
- Không màu neon, không cyan bão hòa, không gradient lệch họ màu.
- Không tô nền lớn bằng cam.
- Không dùng font ngoài DM Sans, Space Grotesk, Be Vietnam Pro.
- Không viết hoa toàn bộ nhãn, không thêm nhãn nhỏ thừa phía trên tiêu đề.
- Không dùng hoa văn nền đậm hơn opacity 0.15.

## 8. Responsive Behavior

| Breakpoint | Hành vi |
|---|---|
| ≥ 1000px | Bố cục đầy đủ: sidebar + 2 cột |
| < 1000px | Ẩn sidebar; khối chính và panel chi tiết xếp 1 cột; thống kê 2 cột; ẩn breadcrumb và ô tìm kiếm |
| < 600px | Padding nội dung 16px; bảng cuộn ngang trong container riêng (min-width 560px) |

- Vùng chạm tối thiểu 32px.
- Bảng rộng cuộn ngang trong `overflow-x:auto`, trang không cuộn ngang.
- Khai báo `viewport-fit=cover` và dùng `env(safe-area-inset-*)` cho phần dính mép.
- Tôn trọng `prefers-reduced-motion`.

## 9. Agent Prompt Guide

**Tham chiếu nhanh**
- Nền khung: `#081833 → #050e22` · Header: `#06112a`
- Nút: `#0b2a5c → #1a4a9c`, 32px, radius 8px
- Nhấn: `#f37021` · Liên kết: `#0a56c4` · Thành công: `#12703a`
- Chữ: ink `#06284d`, fg `#0f1f3a`, mute `#64728a`
- Nền: `#f3f4f7`, thẻ `#fff`, viền `#e1e7f0`
- Font: DM Sans (nội dung) + Space Grotesk (hiển thị)

**Prompt mẫu**
1. "Đọc DESIGN.md. Dựng màn Từ điển thuật ngữ đúng token: header navy 48px, sidebar 232px có icon line, 4 thẻ thống kê trắng có vạch cam, bảng thuật ngữ với tag viền."
2. "Tạo component Button theo Mục 4: primary 32px gradient navy có viền cam mảnh, secondary và danger 30px, đủ hover/focus."
3. "Làm thẻ thống kê theo Mục 4 (Cards): nền trắng, radius 16px, vạch cam ở góc, số Space Grotesk 46px."
4. "Thêm theme `data-theme=fpt` chạy song song theme IBM và Apple, khai báo toàn bộ màu bằng CSS variables ở `:root`."
5. "Rà soát UI hiện tại so với Mục 7 (Do's and Don'ts), liệt kê chỗ vi phạm rồi sửa."
