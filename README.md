<div align="center">

# FPT.dPLAT DESIGN.md

**Bộ mô tả design system cho nền tảng dữ liệu FPT.dPLAT, để AI agent dựng giao diện nhất quán.**

![DESIGN.md](https://img.shields.io/badge/DESIGN.md-9%20sections-f37021?style=flat)
![Themes](https://img.shields.io/badge/themes-FPT%20%7C%20IBM%20%7C%20Apple-0b2a5c?style=flat)
![Preview](https://img.shields.io/badge/preview-light%20%2B%20dark-1a4a9c?style=flat)
![License](https://img.shields.io/badge/license-MIT-10b981?style=flat)

</div>

Chép `DESIGN.md` vào dự án, nói với AI agent "dựng cho tôi màn hình theo design system này", và giao diện sinh ra sẽ giữ đúng ngôn ngữ thiết kế của FPT.dPLAT.

Repo mô tả cụ thể màu, chữ, kích thước, component và quy tắc, để kết quả đúng chất chứ không chỉ na ná.

## Live preview

Sau khi bật GitHub Pages (Settings → Pages → `main` / root), thay `<user>` bằng tên tài khoản của bạn:

| Trang | Link |
|---|---|
| README dạng web | `https://<user>.github.io/fpt-dplat-design-md/` |
| Preview sáng | `https://<user>.github.io/fpt-dplat-design-md/design-md/fpt-dplat/preview.html` |
| Preview tối | `https://<user>.github.io/fpt-dplat-design-md/design-md/fpt-dplat/preview-dark.html` |
| Demo Từ điển thuật ngữ | `https://<user>.github.io/fpt-dplat-design-md/demo/glossary.html` |

## DESIGN.md là gì?

[DESIGN.md](https://stitch.withgoogle.com/docs/design-md/overview/) là khái niệm do Google Stitch giới thiệu: một tài liệu design system dạng văn bản thuần mà AI agent đọc để sinh UI nhất quán.

Nó chỉ là một file markdown. Không cần xuất Figma, không cần JSON schema, không cần công cụ đặc biệt. Đặt vào thư mục gốc dự án, mọi AI coding agent đều hiểu giao diện cần trông thế nào.

| File | Ai đọc | Định nghĩa gì |
|---|---|---|
| `AGENTS.md` | Coding agent | Cách xây dự án |
| `DESIGN.md` | Design agent | Giao diện trông và cảm thế nào |

## Design at a glance

| Thuộc tính | Giá trị |
|---|---|
| Tinh thần | Navy làm khung, cam làm điểm nhấn, thẻ trắng, hairline |
| Nền khung | `#081833 → #050e22` (sidebar), `#06112a` (header) |
| Nhấn | Cam FPT `#f37021` |
| Liên kết | `#0a56c4` |
| Nút chính | Gradient `#0b2a5c → #1a4a9c`, cao 32px, radius 8px |
| Nội dung | DM Sans (dự phòng Be Vietnam Pro) |
| Hiển thị | Space Grotesk |
| Icon | Line 18px, stroke 1.7 |
| Chế độ | Sáng + tối |

## Cấu trúc repo

```
fpt-dplat-design-md/
├── README.md
├── index.html                     # README dạng web (GitHub Pages)
├── .nojekyll
├── AGENTS.md                      # Hướng dẫn cho coding agent
├── CONTRIBUTING.md
├── LICENSE
├── .gitignore
├── .github/
│   └── ISSUE_TEMPLATE.md
├── design-md/
│   └── fpt-dplat/
│       ├── DESIGN.md              # Design system (agent đọc file này)
│       ├── preview.html           # Danh mục trực quan, nền sáng
│       └── preview-dark.html      # Danh mục trực quan, nền tối
└── demo/
    └── glossary.html              # Màn Từ điển thuật ngữ, có 3 theme
```

## Bên trong DESIGN.md

File theo [định dạng Stitch DESIGN.md](https://stitch.withgoogle.com/docs/design-md/specification/): phần YAML frontmatter khai báo token (màu, chữ, bo góc, spacing, component), theo sau là 9 mục mở rộng:

| # | Mục | Nội dung |
|---|---|---|
| 1 | Visual Theme & Atmosphere | Tinh thần, mật độ, triết lý thiết kế |
| 2 | Color Palette & Roles | Tên + hex + vai trò (có cả bảng dark) |
| 3 | Typography Rules | Họ chữ, bảng phân cấp đầy đủ |
| 4 | Component Stylings | Nút, thẻ, ô nhập, điều hướng, tag, bảng và trạng thái |
| 5 | Layout Principles | Thang spacing, lưới, khoảng trắng |
| 6 | Depth & Elevation | Hệ thống bóng, phân tầng bề mặt |
| 7 | Do's and Don'ts | Rào chắn thiết kế và điều cần tránh |
| 8 | Responsive Behavior | Breakpoint, vùng chạm, cách thu gọn |
| 9 | Agent Prompt Guide | Tham chiếu màu nhanh, prompt mẫu, Iteration Guide, Known Gaps |

Mỗi bộ gồm:

| File | Mục đích |
|---|---|
| `DESIGN.md` | Design system (agent đọc) |
| `preview.html` | Danh mục trực quan: ô màu, thang chữ, nút, thẻ |
| `preview-dark.html` | Cùng danh mục trên nền tối |

## Cách dùng

1. Chép `design-md/fpt-dplat/DESIGN.md` vào thư mục gốc dự án, cạnh `AGENTS.md`.
2. Mở `preview.html` trong trình duyệt để xem nhanh hệ thống trước khi dựng.
3. Bảo agent dùng nó.

**Prompt mẫu**

```text
Đọc DESIGN.md. Dựng màn Từ điển thuật ngữ đúng token: header navy 48px,
sidebar 232px có icon line, 4 thẻ thống kê trắng có vạch cam, bảng thuật ngữ
với tag viền. Nút chính 32px radius 8px.
```

```text
Tạo component Button theo Mục 4 của DESIGN.md: primary 32px gradient navy
có viền cam mảnh, secondary và danger 30px, đủ hover, focus, disabled.
```

```text
Rà soát UI hiện tại so với Mục 7 (Do's and Don'ts), liệt kê chỗ vi phạm rồi sửa.
```

## Themes trong bản demo

`demo/glossary.html` có nút chuyển giữa ba theme để so sánh:

| Theme | Đặc trưng |
|---|---|
| **FPT** (mặc định) | Navy + cam, thẻ trắng, Space Grotesk, bo 16px |
| **IBM** | Kiểu Carbon: góc vuông, IBM Plex Sans, ô nhập gạch chân |
| **Apple** | Kiểu SF: kính mờ, bo tròn, tab dạng segmented |

## Đóng góp

Xem [CONTRIBUTING.md](CONTRIBUTING.md).

- **Sửa file hiện có:** sai màu, thiếu token, mô tả yếu.
- **Báo lỗi:** preview hiển thị lệch so với `DESIGN.md`.

Trước khi mở PR, vui lòng mở issue để trao đổi.

## Giấy phép

MIT License, xem [LICENSE](LICENSE).

Repo là tài liệu thiết kế nội bộ ở dạng đề xuất. Tên và logo FPT thuộc về chủ sở hữu tương ứng. Các file được cung cấp "nguyên trạng", không kèm bảo hành.
