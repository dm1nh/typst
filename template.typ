#import "@preview/lucide:0.1.0": lucide-icon
#import "@preview/cetz:0.5.2" as cetz
#import "@preview/sang-math:1.1.0" as sm
#import "@preview/cetz-plot:0.1.4": plot

// COLORS
#let colors = (
  primary: rgb("#0f766e"),
  primary-bg: rgb("#14b8a6"),
  text: rgb("#2A3441"),
  text-muted: luma(120),
  text-white: rgb(255, 255, 255, 5%),
  cover-bg: rgb("#0F172A"),
  shadow: luma(150),
)

// FUNCTIONS
#let note(body) = {
  align(center)[
    #block(
      stroke: 1pt + colors.primary,
      radius: 4pt,
      inset: (x: 1.5em, y: 1em),
      fill: colors.primary.transparentize(95%),
    )[
      #align(left)[#body]
    ]
  ]
}

#let section(body) = {
  box(baseline: 15%)[#lucide-icon("layout-dashboard", fill: colors.primary, size: 0.9em)]
  h(4pt)
  text(fill: colors.primary, weight: "semibold", body)
  v(-1em)
}

#let remark(body: none) = {
  v(0.25em)
  box(
    radius: 2pt, // Bo góc nhỏ
    inset: (x: 5pt, y: 0pt), // Lề chữ bên trong (ngang)
    outset: (y: 5pt), // Mở rộng nền theo chiều dọc mà không đẩy giãn khoảng cách dòng
    baseline: 0%, // Căn chỉnh chân chữ cho bằng với văn bản bên ngoài
    fill: colors.primary,
  )[
    // Chữ bên trong nhỏ hơn một chút và in đậm
    #text(fill: white, size: 0.9em, weight: "semibold", [#if body != none [#body] else [Remark]])
  ]
  h(2pt)
}

#let example-counter = counter("example")
#let example(title: none, body) = {
  example-counter.step()
  v(0.25em)
  box(
    stroke: 1pt + colors.primary, // Viền cam mỏng
    radius: 2pt, // Bo góc nhỏ
    inset: (x: 5pt, y: 0pt), // Lề chữ bên trong (ngang)
    outset: (y: 5pt), // Mở rộng nền theo chiều dọc mà không đẩy giãn khoảng cách dòng
    baseline: 0%, // Căn chỉnh chân chữ cho bằng với văn bản bên ngoài
  )[
    // Chữ bên trong nhỏ hơn một chút và in đậm
    #text(fill: colors.primary, size: 0.9em, weight: "semibold", context [
      Ví dụ #example-counter.display()
      #if title != none [#title]
    ])
  ]
  h(6pt)
  [#body]
}

#let ex-counter = counter("ex")
#let ex(title: none, body) = {
  ex-counter.step()
  v(0.25em)
  box(
    radius: 2pt, // Bo góc nhỏ
    inset: (x: 5pt, y: 0pt), // Lề chữ bên trong (ngang)
    outset: (y: 5pt), // Mở rộng nền theo chiều dọc mà không đẩy giãn khoảng cách dòng
    baseline: 0%, // Căn chỉnh chân chữ cho bằng với văn bản bên ngoài
    fill: colors.primary,
  )[
    // Chữ bên trong nhỏ hơn một chút và in đậm
    #text(fill: white, size: 0.9em, weight: "semibold", context [
      P#ex-counter.display()
      #if title != none [#title]
    ])
  ]
  h(6pt)
  [#body]
}

#let flexgrid(
  cols: 2, // Số cột mặc định (có thể truyền số nguyên hoặc mảng 1fr)
  col-gap: 3em, // Khoảng cách giữa các cột
  row-gap: 1.5em, // Khoảng cách giữa các dòng
  alignment: horizon, // Căn lề nội dung trong ô
  ..cells, // Chứa toàn bộ nội dung các ô được truyền vào
) = {
  v(-0.5em)
  grid(
    columns: cols,
    column-gutter: col-gap,
    row-gutter: row-gap,
    align: alignment,
    ..cells
  )
}

#let dfrac(a, b) = math.display(math.frac(a, b))

// COVER
#let book-cover(
  title: "TOÁN 12",
  subtitle: "Ôn luyện cho kì thi tốt nghiệp THPT 2027",
  author: "Ngô Đăng Minh",
  publisher: "PIXEL MATHEMATICS",
  theme-color: colors.primary, // Màu cam đặc trưng của Packt
  bg-color: colors.cover-bg, // Xanh navy đậm (Dark Theme)
) = {
  // Cấu hình trang không viền (Full bleed) cho bìa
  set page(
    paper: "a4",
    margin: 0cm, // Xóa lề để tô màu phủ kín trang
    header: none,
    footer: none,
  )

  set text(font: "Times New Roman", lang: "vi", fallback: true)

  // Khối nền chính
  block(width: 100%, height: 100%, fill: bg-color)[

    // 1. Dải màu nhấn ở mép trên (Accent bar)
    #place(top, rect(width: 100%, height: 15pt, fill: colors.primary))

    // 2. Logo / Tag nhà xuất bản ở góc trên bên phải
    #place(top + right, dx: -2cm, dy: 2cm)[
      #block(fill: colors.primary, inset: (x: 12pt, y: 8pt), radius: 2pt)[
        #text(fill: white, weight: "bold", size: 14pt, publisher)
      ]
    ]

    // 3. Đồ họa trang trí Toán học (Nằm dưới chữ)
    // Đường tròn lượng giác
    #place(center + horizon, dy: -5cm)[
      #circle(radius: 6cm, stroke: 2pt + colors.text-white)
    ]
    // Đa giác (Mô phỏng hình học không gian)
    #place(center + horizon, dy: -2cm, dx: 3cm)[
      #polygon(
        fill: colors.primary.transparentize(85%),
        stroke: 1.5pt + colors.primary.transparentize(50%),
        (0cm, 0cm),
        (5cm, 3cm),
        (2cm, 7cm),
        (-2cm, 4cm),
      )
    ]
    // Các ký hiệu Toán học khổng lồ mờ ảo (Tích phân, Sigma, Pi)
    #place(center + horizon, dx: -8cm, dy: -8cm)[
      #text(size: 140pt, fill: colors.text-white)[$integral$]
    ]
    #place(center + horizon, dx: 8cm, dy: -1cm)[
      #text(size: 100pt, fill: colors.text-white)[$sum$]
    ]
    #place(center + horizon, dx: -4cm, dy: 6cm)[
      #text(size: 180pt, fill: colors.text-white)[$pi$]
    ]

    // 4. Nội dung Text chính (Title & Subtitle)
    #place(left + horizon, dx: 2.5cm, dy: -1cm)[
      #block(width: 16cm)[
        #text(size: 64pt, weight: "black", fill: colors.primary-bg, title)

        #text(size: 18pt, weight: "regular", fill: rgb("#CBD5E1"), subtitle)

        #v(1.5cm)
        // Đường kẻ ngang đặc trưng của Packt
        #line(length: 6cm, stroke: 4pt + colors.primary)
      ]
    ]

    // 5. Tên Tác giả (Góc dưới cùng bên trái)
    #place(bottom + left, dx: 2.5cm, dy: -3cm)[
      #text(size: 14pt, weight: "regular", fill: rgb("#CBD5E1"))[Biên soạn bởi]
      #v(-0.5em)
      #text(size: 18pt, weight: "bold", fill: white)[#author]
    ]
  ]
}

// ==========================================
// HÀM: TIÊU ĐỀ BÀI HỌC (STYLE 3D RIBBON)
// ==========================================
#let lesson-title(
  id: "01",
  title: "TIÊU ĐỀ",
) = {
  // Tạo một khối chiếm 100% chiều ngang khả dụng (đã trừ margin)
  block(
    width: 100%,
    fill: colors.primary.transparentize(85%), // Nền màu hồng rất nhạt
    stroke: (
      left: 8pt + colors.primary, // Viền trái rất dày tạo điểm nhấn
      rest: 0.5pt + colors.primary.transparentize(50%), // Các viền còn lại mỏng
    ),
    radius: 4pt, // Bo tròn nhẹ 2 góc bên phải
    inset: (x: 1.5em, y: 1.2em), // Khoảng cách từ viền vào chữ
  )[
    // Dùng Grid để chia cột: Cột 1 chứa Số, Cột 2 chứa Tên bài
    #grid(
      columns: (auto, 1fr),
      // Cột 1 tự ép lại vừa chữ, cột 2 dãn hết phần còn lại
      gutter: 1em,
      // Khoảng cách giữa cục Số và Tên bài
      align: (center + horizon, left + horizon),

      // Ô thứ 1: Cục badge chứa số thứ tự bài học
      block(
        fill: colors.primary,
        inset: (x: 8pt, y: 8pt),
        radius: 4pt,
      )[
        #text(fill: white, size: 18pt, weight: "semibold", id)
      ],

      // Ô thứ 2: Tên bài học
      text(fill: colors.primary, size: 18pt, weight: "black", title),
    )
  ]
}

// TEMPLATE
#let template(
  title: "Toán 12",
  author: "Ngô Đăng Minh",
  date: datetime.today().display("[day]/[month]/[year]"),
  body,
) = {
  set document(title: title, author: author)

  set page(
    paper: "a4",
    margin: (inside: 2cm, outside: 1cm, top: 2.5cm, bottom: 2.5cm),
    header: context {
      // Lấy số trang hiện tại
      let page_num = counter(page).get().first()
      let is_odd = calc.odd(page_num) // Kiểm tra trang lẻ

      let header_text = text(10pt, fill: colors.primary, weight: "semibold")[#title]
      let divider = line(length: 100%, stroke: 0.5pt + colors.primary)

      if is_odd {
        // Trang lẻ (bìa phải sách): Căn lề ngoài (right)
        align(right)[#header_text]
        v(-1.75em)
        divider
      } else {
        // Trang chẵn (bìa trái sách): Căn lề ngoài (left)
        align(left)[#header_text]
        v(-1.75em)
        divider
      }
    },

    // Footer: Số trang cũng đổi bên xen kẽ
    footer: context {
      let page_num = counter(page).get().first()
      let is_odd = calc.odd(page_num)

      let divider = line(length: 100%, stroke: 0.5pt + luma(200))
      let page_text = text(10pt, fill: luma(120))[#page_num]

      if is_odd {
        divider
        v(-0.8em)
        align(right)[#page_text] // Số trang ở góc phải dưới
      } else {
        divider
        v(-0.8em)
        align(left)[#page_text] // Số trang ở góc trái dưới
      }
    },
  )

  set text(font: "Times New Roman", size: 13pt, lang: "vi", fallback: true)

  set par(justify: true, leading: 0.8em, spacing: 2em)

  set heading(numbering: (..nums) => {
    let n = nums.pos() // Lấy mảng các cấp số hiện tại

    if n.len() == 1 {
      // Heading cấp 1 (=): Hiển thị A, B, C...
      return numbering("A.", ..n)
    } else {
      // Heading cấp 2, 3, 4 (==, ===): Bỏ qua cấp 1 (A), chỉ lấy từ cấp 2
      // Lệnh slice(1) sẽ cắt bỏ phần tử đầu tiên của mảng
      return numbering("1.1.", ..n.slice(1))
    }
  })
  show heading: it => {
    pad(
      top: 1em,
      bottom: 0.25em,
      text(fill: colors.primary, it),
    )
  }

  set enum(indent: 1em)
  set math.cases(gap: 1em)

  set list(marker: box(baseline: 15%)[#lucide-icon("chevron-right", fill: colors.primary, size: 0.9em)])

  counter(page).update(1)

  body
}
