---
version: alpha
name: FPT.dPLAT
description: Nền tảng dữ liệu doanh nghiệp. Navy làm khung, cam FPT làm điểm nhấn, thẻ trắng, hairline, điềm tĩnh và cao cấp.
colors:
  primary: "#0b2a5c"
  primary-light: "#1a4a9c"
  link: "#0a56c4"
  accent: "#f37021"
  accent-light: "#ff9a55"
  accent-soft: "#ffb37a"
  success: "#12703a"
  warning: "#b4470a"
  danger: "#c62828"
  navy-900: "#081833"
  navy-950: "#050e22"
  navy-header: "#06112a"
  sidebar-text: "#c9d4e8"
  sidebar-muted: "#8fa3c7"
  ink: "#06284d"
  body: "#0f1f3a"
  muted: "#64728a"
  hairline: "#e1e7f0"
  input-border: "#d5ddea"
  canvas: "#f3f4f7"
  surface: "#ffffff"
  tint-orange: "#fff4ea"
  tint-orange-soft: "#fff5ed"
  tint-orange-faint: "#fffaf6"
  glow-blue: "#dbe7fb"
  canvas-dark: "#050e22"
  surface-dark: "#0c1f45"
  body-dark: "#e6edf9"
  ink-dark: "#f4f7fc"
  muted-dark: "#93a4c4"
  link-dark: "#7fb0ff"
  success-dark: "#5fd08a"
  warning-dark: "#ffa566"
  danger-dark: "#ff8a80"
typography:
  display-xl: {fontFamily: "Space Grotesk", fontSize: 34px, fontWeight: 700, lineHeight: 1.05, letterSpacing: -0.045em}
  stat: {fontFamily: "Space Grotesk", fontSize: 46px, fontWeight: 700, lineHeight: 1, letterSpacing: -0.06em}
  heading-lg: {fontFamily: "Space Grotesk", fontSize: 22px, fontWeight: 700, lineHeight: 1.15, letterSpacing: -0.03em}
  heading-md: {fontFamily: "Space Grotesk", fontSize: 19px, fontWeight: 700, lineHeight: 1.2, letterSpacing: -0.02em}
  title-sm: {fontFamily: "Space Grotesk", fontSize: 15px, fontWeight: 600, lineHeight: 1.3, letterSpacing: -0.01em}
  tab: {fontFamily: "Space Grotesk", fontSize: 13.5px, fontWeight: 600}
  body-md: {fontFamily: "DM Sans", fontSize: 14px, fontWeight: 400, lineHeight: 1.4}
  body-sm: {fontFamily: "DM Sans", fontSize: 13px, fontWeight: 400, lineHeight: 1.4}
  button: {fontFamily: "DM Sans", fontSize: 13.5px, fontWeight: 600}
  nav: {fontFamily: "DM Sans", fontSize: 13.5px, fontWeight: 500}
  caption: {fontFamily: "DM Sans", fontSize: 12.5px, fontWeight: 500}
  tag: {fontFamily: "DM Sans", fontSize: 12px, fontWeight: 500}
rounded: {sm: 8px, md: 10px, lg: 12px, xl: 16px, full: 999px}
spacing: {xxs: 4px, xs: 8px, sm: 12px, md: 16px, lg: 20px, xl: 24px, xxl: 32px, section: 40px}
components:
  button-primary: {backgroundColor: "{colors.primary}", textColor: "#ffffff", typography: "{typography.button}", rounded: "{rounded.sm}", height: 32px, padding: 0 14px}
  button-secondary: {backgroundColor: "{colors.surface}", textColor: "{colors.body}", typography: "{typography.body-sm}", rounded: "{rounded.sm}", height: 30px}
  button-danger: {backgroundColor: "{colors.surface}", textColor: "{colors.danger}", rounded: "{rounded.sm}", height: 30px}
  stat-card: {backgroundColor: "{colors.surface}", rounded: "{rounded.xl}", padding: 22px 24px}
  panel: {backgroundColor: "{colors.surface}", rounded: "{rounded.xl}"}
  nav-item: {textColor: "{colors.sidebar-text}", rounded: "{rounded.md}", height: 32px}
  tag: {rounded: "{rounded.full}", typography: "{typography.tag}"}
---

# Design System Analysis: FPT.dPLAT

Nền tảng dữ liệu doanh nghiệp. Navy trầm bao quanh vùng làm việc sáng, thẻ trắng sạch, điểm nhấn cam FPT dùng tiết chế.

## Usage

Đặt file này ở thư mục gốc dự án, cạnh `AGENTS.md`. Khi làm UI, yêu cầu agent: "Đọc DESIGN.md và dùng đúng token màu, font, kích thước, kiểu nút trong đó." Token được gọi theo dạng `{colors.primary}`, `{rounded.sm}`, `{spacing.xl}`.

Preview trực quan: `preview.html` (sáng), `preview-dark.html` (tối). Demo: `demo/glossary.html`.

---

## 1. Visual Theme & Atmosphere

**Tinh thần:** "Navy làm khung, cam làm điểm nhấn." Giao diện dữ liệu doanh nghiệp có chất premium: khung tối bao vùng làm việc sáng, thẻ trắng, đường kẻ mảnh, bóng đổ dài và mờ.

**Mật độ:** vừa phải, thiên về gọn. Nút và ô nhập cao 30–32px như công cụ dữ liệu (theo Databricks); khoảng thở rộng ở thẻ và panel.

**Đặc trưng nhận diện**
- Khung navy ({colors.navy-900} → {colors.navy-950}) cho header và sidebar, không tràn vào vùng nội dung.
- Cam {colors.accent} là tín hiệu duy nhất "đang chọn / cần chú ý": vạch sidebar, gạch chân tab, vạch nhỏ trên thẻ, viền trong nút chính.
- Hai họ chữ: Space Grotesk cho tiêu đề và số liệu (cá tính, hơi kỹ thuật), DM Sans cho nội dung (trung tính, dễ đọc).
- Nút là hình chữ nhật bo {rounded.sm} (8px), không phải pill. Chỉ tag mới dùng {rounded.full}.
- Gradient chỉ nằm trong cùng một họ màu (navy → xanh). Không có gradient nhiều màu.

**Từ khóa:** navy trầm · cam FPT · thẻ trắng · hairline · điềm tĩnh · premium.

## 2. Color Palette & Roles

### Nền và khung
| Token | Hex | Vai trò |
|---|---|---|
| {colors.navy-900} | `#081833` | Đỉnh gradient sidebar |
| {colors.navy-950} | `#050e22` | Đáy gradient sidebar, nền trang bản tối |
| {colors.navy-header} | `#06112a` (α .94) | Nền header, kính mờ blur 16px |
| {colors.canvas} | `#f3f4f7` | Nền vùng nội dung |
| {colors.surface} | `#ffffff` | Thẻ, panel, ô nhập |
| {colors.glow-blue} | `#dbe7fb` | Vệt sáng mờ góc trên phải vùng nội dung |

### Tương tác
| Token | Hex | Vai trò |
|---|---|---|
| {colors.primary} | `#0b2a5c` | Đầu đậm gradient nút chính, avatar |
| {colors.primary-light} | `#1a4a9c` | Đầu sáng gradient nút chính |
| {colors.link} | `#0a56c4` | Liên kết, vòng focus, tag "Chờ duyệt" |
| {colors.accent} | `#f37021` | Mục sidebar đang chọn, vạch nhấn, gạch chân tab, viền trong nút chính |
| {colors.accent-light} | `#ff9a55` | Đầu sáng gradient cam (vạch thẻ) |
| {colors.accent-soft} | `#ffb37a` | Chữ logo (đầu sáng) |

### Trạng thái
| Token | Hex | Dùng cho |
|---|---|---|
| {colors.success} | `#12703a` | Tag "Đã duyệt" |
| {colors.warning} | `#b4470a` | Tag "Nháp", chữ cam trên nền trắng |
| {colors.danger} | `#c62828` | Nút Xóa, lỗi |

### Chữ và đường kẻ
| Token | Hex | Vai trò |
|---|---|---|
| {colors.ink} | `#06284d` | Tiêu đề, số thống kê |
| {colors.body} | `#0f1f3a` | Chữ nội dung |
| {colors.muted} | `#64728a` | Chữ phụ, nhãn cột |
| {colors.sidebar-text} | `#c9d4e8` | Mục sidebar thường |
| {colors.sidebar-muted} | `#8fa3c7` | Icon sidebar, nhãn nhóm |
| {colors.hairline} | `#e1e7f0` | Viền thẻ, kẻ bảng |
| {colors.input-border} | `#d5ddea` | Viền select, nút phụ |
| {colors.tint-orange} | `#fff4ea` | Dòng bảng đang chọn, hover nút phụ |
| {colors.tint-orange-soft} | `#fff5ed` | Đầu gradient thẻ bộ thuật ngữ |
| {colors.tint-orange-faint} | `#fffaf6` | Nền panel chi tiết |

### Bản tối (preview-dark.html)
| Token | Hex | Vai trò |
|---|---|---|
| {colors.canvas-dark} | `#050e22` | Nền trang |
| {colors.surface-dark} | `#0c1f45` | Thẻ, panel |
| {colors.body-dark} | `#e6edf9` | Chữ nội dung |
| {colors.ink-dark} | `#f4f7fc` | Tiêu đề, số |
| {colors.muted-dark} | `#93a4c4` | Chữ phụ |
| {colors.link-dark} | `#7fb0ff` | Liên kết |
| {colors.success-dark} · {colors.warning-dark} · {colors.danger-dark} | `#5fd08a` · `#ffa566` · `#ff8a80` | Trạng thái |

Viền tối `rgba(255,255,255,.10)`. Cam giữ nguyên {colors.accent}; nền chọn `rgba(243,112,33,.14)`.

### Gradient
| Tên | Giá trị | Dùng cho |
|---|---|---|
| Nút chính | `linear-gradient(135deg, #0b2a5c, #1a4a9c)` | Button primary |
| Sidebar | `linear-gradient(180deg, #081833, #050e22)` | Nền sidebar |
| Logo | `linear-gradient(90deg, #ffb37a, #f37021 60%, #ffb37a)` | Chữ logo (clip text) |
| Mục chọn | `linear-gradient(90deg, rgba(243,112,33,.16), rgba(243,112,33,.02))` | Nền mục sidebar đang chọn |
| Thẻ bộ | `linear-gradient(90deg, #fff5ed, #fff)` | Thẻ bộ thuật ngữ đang chọn |
| Panel chi tiết | `linear-gradient(180deg, #fffaf6, #fff)` | Nền panel chi tiết |

Không dùng gradient nhiều màu (xanh + cam + lá) trong bất kỳ đường line hay nền nào.

## 3. Typography Rules

### Họ chữ
- **Hiển thị:** `Space Grotesk`, fallback `DM Sans`, `sans-serif`. Dùng cho tiêu đề trang, số thống kê, tên thuật ngữ, tab, tiêu đề panel.
- **Nội dung / UI:** `DM Sans`, fallback `Be Vietnam Pro`, `system-ui`. Be Vietnam Pro bảo đảm đủ dấu tiếng Việt khi DM Sans thiếu glyph.

### Phân cấp
| Vai trò | Token | Font | Cỡ | Weight | Line-height | Letter-spacing |
|---|---|---|---|---|---|---|
| Tiêu đề trang | {typography.display-xl} | Space Grotesk | 34px | 700 | 1.05 | -0.045em |
| Số thống kê | {typography.stat} | Space Grotesk | 46px | 700 | 1 | -0.06em |
| Tiêu đề chi tiết | {typography.heading-lg} | Space Grotesk | 22px | 700 | 1.15 | -0.03em |
| Tiêu đề panel | {typography.heading-md} | Space Grotesk | 19px | 700 | 1.2 | -0.02em |
| Tên thuật ngữ | {typography.title-sm} | Space Grotesk | 15px | 600 | 1.3 | -0.01em |
| Tab | {typography.tab} | Space Grotesk | 13.5px | 600 | — | — |
| Nội dung | {typography.body-md} | DM Sans | 14px | 400 | 1.4 | 0 |
| Nội dung nhỏ | {typography.body-sm} | DM Sans | 13px | 400 | 1.4 | 0 |
| Nút | {typography.button} | DM Sans | 13.5px | 600 | — | 0 |
| Mục sidebar | {typography.nav} | DM Sans | 13.5px | 500 | — | 0 |
| Nhãn cột | {typography.caption} | DM Sans | 12.5px | 500 | — | 0 |
| Tag | {typography.tag} | DM Sans | 12px | 500 | — | 0 |

### Nguyên tắc
- **Thang weight:** 400 / 500 / 600 / 700. Số liệu và tiêu đề luôn 600–700; nội dung 400; nhãn 500.
- **Tracking:** chữ hiển thị siết chặt (âm), chữ nội dung để mặc định. Số thống kê siết mạnh nhất (-0.06em).
- Dùng sentence case, không viết hoa toàn bộ. Dòng văn bản dài không quá 80 ký tự.
- Không dùng Space Grotesk cho đoạn văn dài, chỉ cho chữ ngắn và số.

## 4. Component Stylings

### Buttons
| Biến thể | Kích thước | Kiểu |
|---|---|---|
| **Primary** | cao 32px, padding `0 14px`, {rounded.sm} | Nền gradient navy, chữ trắng {typography.button}, viền trong `inset 0 0 0 1px rgba(243,112,33,.6)`, bóng `0 10px 20px -12px rgba(11,42,92,.8)` |
| **Secondary** (Sửa) | cao 30px, padding `0 12px`, {rounded.sm} | Nền {colors.surface}, viền 1px {colors.input-border}, chữ {colors.body} |
| **Danger** (Xóa) | cao 30px, {rounded.sm} | Như secondary, chữ {colors.danger} |

Trạng thái:
- **Hover:** primary sáng thêm 10% (`brightness(1.1)`); secondary nền {colors.tint-orange} + viền {colors.accent}.
- **Focus:** `3px solid rgba(10,86,196,.35)`, offset 1px.
- **Disabled:** opacity .45, con trỏ `not-allowed`, không hover.
- **Chuyển động:** 150ms ease.

### Inputs & Select
Cao 30px, {rounded.sm}, nền {colors.surface}, viền 1px {colors.input-border}, chữ {typography.body-sm}. Focus giống nút.

### Cards
- **Thẻ thống kê** ({components.stat-card}): nền trắng, viền 1px {colors.hairline}, {rounded.xl}, padding `22px 24px`, bóng `0 14px 34px -22px rgba(11,31,68,.35)`. Vạch cam 36×2px ở góc trên trái (gradient {colors.accent} → {colors.accent-light}). Nhãn {colors.muted}, số {typography.stat} màu {colors.ink}.
- **Panel** ({components.panel}): nền trắng, viền 1px {colors.hairline}, {rounded.xl}, bóng `0 20px 44px -28px rgba(11,31,68,.4)`.
- **Thẻ bộ thuật ngữ (đang chọn):** nền gradient cam nhạt, viền 1px {colors.hairline} + viền trái 3px {colors.accent}, {rounded.lg}.

### Navigation
- **Sidebar:** rộng 232px, nền gradient navy, viền phải `rgba(243,112,33,.18)`, padding `16px 12px`. Nhãn nhóm 11.5px {colors.sidebar-muted}.
- **Mục sidebar** ({components.nav-item}): cao 32px, {rounded.md}, icon 18px + chữ {typography.nav}. Thường: chữ {colors.sidebar-text}, icon {colors.sidebar-muted}. **Đang chọn:** chữ trắng, icon {colors.accent}, nền gradient cam mờ, vạch cam 3px sát mép trái (bo phải 3px).
- **Header:** cao 48px, nền {colors.navy-header} kính mờ, viền dưới `rgba(255,122,26,.35)`. Logo gradient cam. Ô tìm kiếm cao 32px, {rounded.lg}, nền `rgba(255,255,255,.07)`, viền `rgba(255,255,255,.12)`. Avatar tròn 32px nền {colors.primary}, vòng cam mảnh.
- **Tabs:** chữ {colors.muted} → {colors.ink} khi chọn, gạch chân {colors.accent} 2px, padding `10px 12px`, font {typography.tab}.

### Tags (trạng thái)
Viên thuốc {rounded.full}, nền trong suốt, viền 1px cùng màu chữ, chấm tròn 6px đầu tag, {typography.tag}, padding `2px 10px`.
| Trạng thái | Màu |
|---|---|
| Đã duyệt | {colors.success} |
| Chờ duyệt | {colors.link} |
| Nháp | {colors.warning} |

### Table
Tiêu đề không nền, chữ {colors.muted} {typography.caption}, kẻ dưới {colors.hairline}. Ô padding `10px 16px`, kẻ dưới {colors.hairline}. Tên thuật ngữ {typography.title-sm}, mã phụ {colors.muted} 12px. Hover dòng `rgba(0,0,0,.025)`; dòng chọn nền {colors.tint-orange}. Cột thao tác căn phải.

### Detail panel
Rộng 260px, nền gradient {colors.tint-orange-faint} → trắng, tiêu đề {typography.heading-lg}, nhãn {colors.muted}.

### Icons
Line icon 24×24, `stroke: currentColor`, `stroke-width: 1.7`, cap và join tròn, không tô nền. Hiển thị 18px.

## 5. Layout Principles

### Khung trang
- Header 48px cố định trên; sidebar 232px trái; vùng nội dung cuộn riêng, padding `28px 32px 40px`.
- Nền nội dung {colors.canvas} + vệt {colors.glow-blue}.

### Lưới
- Thống kê: 4 cột, gap {spacing.md}.
- Khối chính: 2 cột `320px | 1fr`, gap {spacing.md}. Trong panel phải: bảng `1fr` + chi tiết `260px`.

### Thang khoảng cách
{spacing.xxs} 4px · {spacing.xs} 8px · {spacing.sm} 12px · {spacing.md} 16px · {spacing.lg} 20px · {spacing.xl} 24px · {spacing.xxl} 32px · {spacing.section} 40px.

### Thang bo góc
{rounded.sm} 8px (nút, select) · {rounded.md} 10px (mục sidebar) · {rounded.lg} 12px (ô tìm kiếm, thẻ bộ) · {rounded.xl} 16px (thẻ, panel) · {rounded.full} (tag, avatar).

### Nhịp và khoảng trắng
Tiêu đề trang cách thống kê {spacing.xl}; giữa các khối {spacing.md}. Rộng quanh thẻ, gọn bên trong bảng. Số và nhãn trong thẻ căn trái.

### Mẫu trang
- **Danh sách + chi tiết:** danh sách bộ bên trái, bảng ở giữa, chi tiết phải (màn Từ điển thuật ngữ).
- **Trang tổng quan:** hàng thống kê 4 thẻ phía trên, khối nội dung bên dưới.

## 6. Depth & Elevation

| Mức | Dùng cho | Bóng |
|---|---|---|
| 0 | Nền, bảng | Không bóng |
| 1 | Thẻ thống kê | `0 14px 34px -22px rgba(11,31,68,.35)` |
| 2 | Panel | `0 20px 44px -28px rgba(11,31,68,.4)` |
| 3 | Nút chính | `0 10px 20px -12px rgba(11,42,92,.8)` |
| Tối | Thẻ, panel bản tối | `0 20px 44px -28px rgba(0,0,0,.7)` |

Bóng luôn dài và mờ, tông navy, offset âm nên không viền quanh. Header và sidebar dùng blur và gradient thay cho bóng. Bề mặt tách nhau bằng viền {colors.hairline} trước, bóng sau.

**Trang trí:** vệt sáng {colors.glow-blue} ở nền, vạch cam 2px trên thẻ. Không hoa văn đậm, không hình học nổi.

## 7. Do's and Don'ts

**Do**
- Dùng token ở mục 2–5; cần giá trị mới thì thêm vào file này trước.
- Giữ nút chính 32px, {rounded.sm}; nút phụ và select 30px.
- Để cam là điểm nhấn hiếm, mỗi màn tối đa vài chỗ.
- Dùng {colors.warning} (không phải {colors.accent}) cho chữ cam trên nền trắng, để đủ tương phản.
- Dùng icon line cùng nét 1.7.
- Tách bề mặt bằng viền hairline trước, bóng sau.
- Dùng Space Grotesk cho số liệu và tiêu đề, DM Sans cho phần còn lại.

**Don't**
- Không dải nhiều màu (xanh + cam + lá) trong một đường line hay nền.
- Không neon, không cyan bão hòa, không gradient lệch họ màu.
- Không tô nền lớn bằng cam.
- Không dùng nút dạng pill; pill chỉ cho tag và avatar.
- Không dùng font ngoài DM Sans, Space Grotesk, Be Vietnam Pro.
- Không viết hoa toàn bộ nhãn, không thêm nhãn nhỏ thừa phía trên tiêu đề.
- Không hoa văn nền đậm hơn opacity 0.15.
- Không đặt nội dung dài bằng Space Grotesk.

## 8. Responsive Behavior

### Breakpoints
| Tên | Rộng | Thay đổi |
|---|---|---|
| Desktop | ≥ 1000px | Đầy đủ: sidebar + 2 cột |
| Tablet / nhỏ | < 1000px | Ẩn sidebar; khối chính và chi tiết xếp 1 cột; thống kê 2 cột; ẩn breadcrumb và ô tìm kiếm |
| Mobile | < 600px | Padding nội dung 16px; bảng cuộn ngang trong container riêng (min-width 560px) |

### Vùng chạm
Tối thiểu 32px cho nút và mục điều hướng.

### Thu gọn
- Bảng rộng cuộn ngang trong `overflow-x:auto`, trang không bao giờ cuộn ngang.
- Sidebar ẩn hoàn toàn dưới 1000px (thay bằng menu mở ra khi cần).
- Khai báo `viewport-fit=cover` và dùng `env(safe-area-inset-*)` cho phần dính mép.

### Chuyển động
Hover, focus 150ms ease. Tôn trọng `prefers-reduced-motion`: tắt chuyển động và cuộn mượt.


## Known Gaps
- Chưa thiết kế: modal, toast, form và trạng thái lỗi/thành công của form, empty state, skeleton loading.
- Bảng màu biểu đồ (chart palette) chưa xác định.
- Bản tối mới có bảng màu và preview; chưa kiểm thử toàn bộ component ở bản tối.
- Thời gian chuyển động (150ms ease) là giả định, chưa đối chiếu với sản phẩm thật.
- Chưa có biến thể mật độ bảng (compact / comfortable).
- Font DM Sans có thể thiếu glyph tiếng Việt; đã dự phòng Be Vietnam Pro nhưng chưa rà từng ký tự.
- Theme IBM và Apple trong bản demo không thuộc bộ token này.
