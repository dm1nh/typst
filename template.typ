// COLORS
#let colors = (
  primary: rgb("#0f766e"),
  primary-bg: rgb("#14b8a6"),
  text: rgb("#2A3441"),
  text-muted: luma(120),
  text-white: rgb(255, 255, 255, 5%),
  cover-bg: rgb("#0F172A"),
)

#let packt_math_cover(
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
    #place(top, rect(width: 100%, height: 15pt, fill: theme-color))

    // 2. Logo / Tag nhà xuất bản ở góc trên bên phải
    #place(top + right, dx: -2cm, dy: 2cm)[
      #block(fill: theme-color, inset: (x: 12pt, y: 8pt), radius: 2pt)[
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
        fill: theme-color.transparentize(85%),
        stroke: 1.5pt + theme-color.transparentize(50%),
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
        #line(length: 6cm, stroke: 4pt + theme-color)
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

// TEMPLATE
#let template(
  title: "Toán 12",
  author: "Ngô Đăng Minh",
  date: datetime.today().display("[day]/[month]/[year]"),
  body,
) = {
  set document(title: title, author: author)

  packt_math_cover()

  set page(
    paper: "a4",
    margin: (inside: 2cm, outside: 1cm, top: 2.5cm, bottom: 2.5cm),
    header: context {
      // Lấy số trang hiện tại
      let page_num = counter(page).get().first()
      let is_odd = calc.odd(page_num) // Kiểm tra trang lẻ

      let header_text = text(13pt, fill: colors.primary)[#title]
      let divider = line(length: 100%, stroke: 0.5pt + colors.text-muted)

      if is_odd {
        // Trang lẻ (bìa phải sách): Căn lề ngoài (right)
        align(right)[#header_text]
        v(-0.8em)
        divider
      } else {
        // Trang chẵn (bìa trái sách): Căn lề ngoài (left)
        align(left)[#header_text]
        v(-0.8em)
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

  set par(justify: true, leading: 0.8em, spacing: 1.2em)

  set heading(numbering: "1.1.")
  show heading: it => {
    pad(
      top: 0em,
      bottom: 0em,
      text(fill: colors.primary, it),
    )
  }

  set enum(indent: 1em)
  set math.cases(gap: 1em)

  //
  // pagebreak()
  //
  // outline(
  //   title: text(weight: "bold", size: 18pt, "Mục lục"),
  //   depth: 3,
  //   indent: 1em,
  // )

  pagebreak()

  counter(page).update(1)

  body
}
