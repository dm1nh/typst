#import "/template.typ": cetz, colors, dfrac, ex, example, flexgrid, lesson-title, note, plot, remark, section, template

#show: template.with(
  title: "Nền tảng về Đại số và Giải tích",
  date: "05/10/2026",
)

#lesson-title(
  id: "T12A-X01",
  title: "NỀN TẢNG VỀ ĐẠI SỐ VÀ GIẢI TÍCH",
)

= KIẾN THỨC NỀN TẢNG

== Các hằng đẳng thức đáng nhớ

#note[
  #grid(
    columns: 2,
    row-gutter: 1em,
    column-gutter: 2em,
    align: left,
    [Hiệu hai bình phương], [$a^2 - b^2 = (a - b)(a + b)$],
    [Bình phương của một tổng], [$(a + b)^2 = a^2 + 2a b + b^2$],
    [Bình phương của một hiệu], [$(a - b)^2 = a^2 - 2a b + b^2$],
    [Lập phương của một tổng], [$(a + b)^3 = a^3 + 3a^2 b + 3a b^2 + b^3$],
    [Lập phương của một hiệu], [$(a - b)^3 = a^3 - 3a^2 b + 3a b^2 - b^3$],
    [Tổng hai lập phương], [$a^3 + b^3 = (a + b)(a^2 - a b + b^2)$],
    [Hiệu hai lập phương], [$a^3 - b^3 = (a - b)(a^2 + a b + b^2)$],
  )
]

#example[Sử dụng hằng đẳng thức, khai triển các biểu thức sau]
#flexgrid(
  cols: 5,
  col-gap: 3em,
  [1) $x^2 - 4$],
  [2) $4x^2 - 81$],
  [3) $x^2 - 4y^2$],
  [4) $(x + 3)^2$],
  [5) $(2x - 1)^2$],
  [6) $(3x + y)^2$],
  [7) $(x - 2)^3$],
  [8) $(2x + 3)^3$],
  [9) $x^3 + 8$],
  [10) $8x^3 - 27$],
)

== Biểu thức. Đa thức. Thu gọn biểu thức.

=== Biểu thức. Đa thức.
#note[
  - Biểu thức là tổ hợp hữu hạn các ký hiệu (số, biến, phép toán, dấu ngoặc) được viết đúng quy tắc ngữ cảnh để biểu diễn một phép tính hoặc mối quan hệ giữa các đại lượng.
  - Giá trị của biểu thức là kết quả nhận được sau khi thay số cụ thể vào biến (nếu có).
  - Đa thức là tổng của những đơn thức; mỗi đơn thức trong tổng được gọi là một hạng tử của đa thức đó.
  - Đa thức thu gọn là đa thức không chứa hai hạng tử đồng dạng nào. Hai hạng tử đồng dạng là hai hạng tử có phần biến giống nhau.
  - Bậc của đa thức là bậc của hạng tử cao nhất sau khi thu gọn; được tính bằng tổng số mũ lớn nhất của các biến trong hạng tử đó.
  - Đa thức một biến là đa thức chỉ chứa một biến duy nhất (ví dụ như biến $x$).
]

#example[Trong các biểu thức dưới đây, biểu thức nào là đa thức và cho biết bậc của chúng?]

#flexgrid(
  cols: 3,
  [1) $x^3 + 3x^2 - x + 1$],
  [2) $x y^2 + x^2y - 2x y + 3$],
  [3) $dfrac(1, x + 1) + x^2 - 3$],
  [4) $sqrt(x - 2) - 2x + 5$],
  [5) $8 + y - 6y^2 + 3y^3$],
  [6) $x^2 - x sqrt(x) + 8x$],
)

#example[Thu gọn các biểu thức sau]

#flexgrid(
  cols: 2,
  [1) $x^2 - 2x + 3x^2 - x + 5$],
  [2) $2(x^2 - 3) - 4(6 - x) + 3x$],
  [3) $(x + 3) dot x - (x - 3)^2$],
  [4) $- x y^2 - 2x y + 4x y^2 - x y + 5x^2y - 1$],
  [5) $(2x - 3)(2x + 3) - (x - 4)^2$],
  [6) $(x - 1)^3 - (x - 2)(x^2 + 2x + 4)$],
  [7) $dfrac(x - 5, x - 1) + dfrac(3 - x, x + 2) - 1$],
  [8) $1 - dfrac(2, (x + 2)^2)$],
)

=== Nghiệm của đa thức

#note[
  - Nghiệm của đa thức một biến $f(x)$ là tập hợp những giá trị của biến $x$ thỏa mãn $f(x) = 0$.
]

#example[Nghiệm của đa thức bậc hai $f(x) = x^2 - 3x + 2$ là $x_1 = 1$ và $x_2 = 2$.]

=== Điều kiện xác định của một biểu thức

#note[
  - Điều kiện xác định (ĐKXĐ) của biểu thức là tập hợp các giá trị của biến số để biểu thức có nghĩa (tính được kết quả trong tập hợp số thực).
  - Các quy tắc tìm điều kiện xác định của biểu thức thường gặp trước lớp 11:
    + Phân thức chứa ẩn ở mẫu dạng $dfrac(A(x), B(x))$ thì mẫu $B(x)$ phải khác 0.
    + Căn bậc chẵn dạng $sqrt(A(x))$ thì $A(x) >= 0$.
]

#example[Tìm điều kiện xác định của các biểu thức sau]

#flexgrid(
  cols: 3,
  [1) $x^3 - 4x^2 + 3x - 2$],
  [2) $dfrac(2x - 3, x + 2)$],
  [3) $dfrac(x^2 + 2x - 5, 3x - 1)$],
  [4) $sqrt(x - 2) + 2$],
  [5) $sqrt(x - 3) - sqrt(10 - 2x)$],
  [6) $dfrac(2, sqrt(x + 3)) - sqrt(2x - 1)$],
)

== Phương trình. Hệ phương trình. Bất phương trình.

=== Phương trình bậc nhất một ẩn

#note[
  Phương trình bậc nhất một ẩn có dạng $a x + b = 0$ ($a eq.not 0$) có nghiệm duy nhất là $x = dfrac(-b, a)$
]

#example[Ví dụ 1] Giải các phương trình sau

#flexgrid(
  row-gap: 2em,
  [1) $2x - 5 = 0$],
  [2) $x - 3 = 3x + 5$],
  [3) $x^2 - 2x + 3 = x(x - 5)$],
  [4) $dfrac(1, x - 2) + dfrac(2x, x + 1) = 2$],
)

=== Phương trình bậc hai một ẩn

#note[
  - Phương trình bậc hai một ẩn có dạng $a x^2 + b x + c = 0$ ($a eq.not 0$).
  - Các bước giải phương trình bậc hai một ẩn:
    + Xác định các hệ số a, b, c.
    + Tính giá trị của biệt thức $Delta = b^2 - 4a c$.
    + Dựa vào giá trị của $Delta$ vừa tính, có 3 trường hợp xảy ra:
      - $Delta < 0$: Phương trình vô nghiệm.
      - $Delta = 0$: Phương trình có nghiệm kép $x_1 = x_2 = dfrac(-b, 2a)$.
      - $Delta > 0$: Phương trình có 2 nghiệm phân biệt
      #h(4em)$x_1 = dfrac(-b + sqrt(Delta), 2a)$; $x_2 = dfrac(-b - sqrt(Delta), 2a)$.
]

#example[Giải các phương trình sau]
#flexgrid(
  cols: 3,
  [1) $x^2 - 2x + 3 = 0$],
  [2) $4x^2 - 4x + 1 = 0$],
  [3) $2x^2 - 7x + 5 = 0$],
  [4) $x^2 - 6x - 2 = 0$],
  [5) $dfrac(2x, x + 1) - dfrac(x - 2, x - 3) = 1$],
  [6) $dfrac(x, x - 3) - dfrac(2x + 1, x + 3) = -2$],
)

#section[Định lí Viète]

#note[
  Nếu phương trình bậc hai $a x^2 + b x + c = 0$ với $a eq.not 0$ có hai nghiệm phân biệt $x_1$ và $x_2$ thì ta được:
  $
    display(cases(S = x_1 + x_2 = dfrac(-b, a), P = x_1 x_2 = dfrac(c, a)))
  $
  Từ đó ta có thể kết luận:
  - Nếu S > 0 và P > 0: Phương trình có hai nghiệm dương phân biệt.
  - Nếu S < 0 và P > 0: Phương trình có hai nghiệm âm phân biệt.
  - Nếu P < 0: Phương trình có hai nghiệm trái dấu.
]

=== Hệ phương trình bậc nhất hai ẩn và ba ẩn

#example[Giải các hệ phương trình sau]

#flexgrid(
  [1) $display(cases(2x - y = 5, x + 3y = -2))$],
  [2) $display(cases(x + y + z = 7, x - 2y - z = -12, 2x + y + 2z = 10))$],
)

=== Bất phương trình bậc nhất một ẩn

#note[
  - Bất phương trình bậc nhất một ẩn có dạng $a x + b > 0$ ($a eq.not 0$).
  - Áp dụng tính chất của bất đẳng thức để giải bất phương trình bậc nhất một ẩn:
    + Bất phương trình giữ nguyên chiều khi cộng trừ cả hai vế với một số $a$.
    + Bất phương trình giữ nguyên chiều khi nhân chia cả hai vế với một số dương; ngược lại đổi chiều khi nhân chia cả hai vế với số âm.
    + Bất phương trình đổi chiều khi lấy nghịch đảo cả hai vế.
]

#example[Giải các bất phương trình sau]

#flexgrid(
  [1) $-3x - 5 < 2x + 3$],
  [2) $dfrac(x - 2, 3) + dfrac(3 -x, 4) < 4$],
)

== Tập hợp. Khoảng - Nửa Khoảng - Đoạn.

=== Tập hợp

#note[
  - Có hai cách cho tập hợp: Liệt kê các phần tử và chỉ ra tính chất đặc trưng của các phần tử.
  - Mỗi phần tử trong tập hợp chỉ được liệt kê duy nhất một lần. Nếu một phần tử thuộc tập hợp thì được kí hiệu $x in A$.
  - Tập hợp không có phần tử nào được gọi là tập rỗng, kí hiệu $emptyset$.
  - Nếu mọi phần tử của tập hợp $A$ đều là phần tử của tập hợp $B$ thì gọi $A$ là tập con của $B$, kí hiệu $A subset B$.
  - Người ta thường minh họa tập hợp bằng sơ đồ Venn.
  - Hai tập hợp bằng nhau có cùng phần tử, kí hiệu $A = B$.
]

#remark()
Các tập hợp số thường gặp:
- Tập hợp các số tự nhiên, kí hiệu $NN = {0; 1; 2; 3; 4; ...}$.
- Tập hợp các số nguyên, kí hiệu $ZZ = {...;-3; -2; -1; 0; 1; 2; 3; ...}$.
- Tập hợp các số thực, kí hiệu $RR$.

#example[Cho hai tập hợp $A$ gồm các số nguyên lớn hơn $-3$ và nhỏ hơn $5$. Viết tập $A$ dưới hai dạng.]

#section[Khoảng. Nửa khoảng. Đoạn.]

#let draw-line(
  hatch-l: none,
  hatch-r: none,
  type-l: none,
  type-r: none,
  label-l: none,
  label-r: none,
  zero: false,
) = cetz.canvas({
  import cetz.draw: *

  // Đường trục chính
  line((0, 0), (6.5, 0), mark: (end: ">", fill: black))

  // Hàm vẽ các nét gạch chéo (hatch)
  let draw-hatch-slant(start, end) = {
    let step = 0.12
    let n = int((end - start) / step)
    for i in range(n + 1) {
      let x = start + i * step
      if x <= end {
        // Vẽ vạch chéo từ dưới lên trên, nghiêng sang phải
        line((x - 0.1, -0.15), (x + 0.1, 0.15), stroke: 0.6pt + red)
      }
    }
  }

  // Vẽ vùng gạch chéo bên trái và phải
  if hatch-l != none {
    draw-hatch-slant(0.1, hatch-l - 0.1)
  }
  if hatch-r != none {
    draw-hatch-slant(hatch-r + 0.1, 6.3)
  }

  // Vẽ ngoặc và nhãn bên trái
  if type-l != none {
    // Dùng box có nền để ngoặc che đi các nét gạch chéo/trục ngang phía sau nó
    content((hatch-l, 0), $#text(fill: colors.primary, size: 14pt, type-l)$)
    content((hatch-l, -0.45), text(fill: colors.text)[$#label-l$])
  }

  // Vẽ ngoặc và nhãn bên phải
  if type-r != none {
    content((hatch-r, 0), $#text(fill: colors.primary, size: 14pt, type-r)$)
    content((hatch-r, -0.45), text(fill: colors.text)[$#label-r$])
  }

  // Vẽ điểm 0 (dành cho R)
  if zero {
    line((3.25, -0.15), (3.25, 0.15), stroke: 0.8pt)
    content((3.25, -0.45), text(fill: colors.text)[$0$])
  }
})

// ==========================================
// BỐ CỤC CHÍNH BẢNG TẬP HỢP
// ==========================================
#align(center)[
  #align(left)[
    #grid(
      columns: (auto, 1fr),
      row-gutter: 1.5em,
      column-gutter: 1em,
      align: (left, left + horizon),

      // --- 1. Khoảng ---
      grid.cell(colspan: 2, text(fill: colors.primary, size: 13pt)[$bullet$ _Khoảng_]),

      [$ (a; b) = \{ x in RR | a < x < b \} $],
      draw-line(hatch-l: 2.5, hatch-r: 4.5, type-l: "(", type-r: ")", label-l: "a", label-r: "b"),

      [$ (a; +oo) = \{ x in RR | x > a \} $],
      draw-line(hatch-l: 2.5, type-l: "(", label-l: "a"),

      [$ (-oo; b) = \{ x in RR | x < b \} $],
      draw-line(hatch-r: 4.5, type-r: ")", label-r: "b"),

      [$ (-oo; +oo) $],
      draw-line(zero: true),

      // --- 2. Đoạn ---
      grid.cell(colspan: 2, text(fill: colors.primary, size: 13pt)[$bullet$ _Đoạn_]),

      [$ [a; b] = \{ x in RR | a <= x <= b \} $],
      draw-line(hatch-l: 2.5, hatch-r: 4.5, type-l: "[", type-r: "]", label-l: "a", label-r: "b"),

      // --- 3. Nửa khoảng ---
      grid.cell(colspan: 2, text(fill: colors.primary, size: 13pt)[$bullet$ _Nửa khoảng_]),

      [$ [a; b) = \{ x in RR | a <= x < b \} $],
      draw-line(hatch-l: 2.5, hatch-r: 4.5, type-l: "[", type-r: ")", label-l: "a", label-r: "b"),

      [$ (a; b] = \{ x in RR | a < x <= b \} $],
      draw-line(hatch-l: 2.5, hatch-r: 4.5, type-l: "(", type-r: "]", label-l: "a", label-r: "b"),

      [$ [a; +oo) = \{ x in RR | x >= a \} $],
      draw-line(hatch-l: 2.5, type-l: "[", label-l: "a"),

      [$ (-oo; b] = \{ x in RR | x <= b \} $],
      draw-line(hatch-r: 4.5, type-r: "]", label-r: "b"),
    )
  ]
]

=== Các phép toán trong tập hợp

#note[
  - Tập hợp các phần tử thuộc cả hai tập $A$ và $B$ được gọi là *giao* của $A$ và $B$, kí hiệu $A inter B$.
  - Tập hợp các phần tử thuộc tập $A$ hoặc thuộc tập $B$ được gọi là *hợp*, kí hiệu $A union B$.
  - Tập hợp các phần tử thuộc tập $A$ nhưng không thuộc tập $B$, kí hiệu $A \\ B$.
  - Nếu tập $A$ là tập con của tập $S$, tập hợp các phần tử thuộc $S$ nhưng không thuộc $A$ được gọi là phần bù của $A$ trong $S$, kí hiệu $C_S A$
]

#example[Tìm các tập hợp $A union B$, $A inter B$, $A \\ B$, $B \\ A$, $C_RR A$ của hai tập hợp $A$ và $B$]
#flexgrid(
  [1) $A = [-2, 3)$ và $B = (-3, +infinity)$],
  [2) $A = {x in RR | x < 1}$ và $B = {x in RR | x >= -3}$],
)

== Hàm số cơ bản

#note[
  - Hàm số là một quy tắc toán học liên kết mỗi giá trị của một biến độc lập (thường gọi là $x$) với đúng một giá trị tương ứng của biến phụ thuộc (thường gọi là $y$) trên tập $RR$.
  - Hàm số có kí hiệu: $y = f(x)$
  - $x$ được gọi là biến, $y$ là hàm số theo biến $x$.
  - Tập xác định của hàm số bao gồm tất cả các giá trị của $x$ để giá trị $y$ xác định trên tập $RR$, được kí hiệu là tập $D$.
  - Tập giá trị của hàm số bao gồm tất cả các giá trị y nhận được với mọi $x$ thuộc tập xác định, kí hiệu là tập $T$.
  - Đồ thị hàm số $y = f(x)$ xác định trên tập $D$ là tập hợp tất cả các điểm $M(x; f(x))$ trên mặt phẳng tọa độ $O x y$ với mọi $x in D$; trong đó $O$ là gốc tọa độ, $O x$ là trục hoành và $O y$ là trục tung.
]

#section[Cách tìm tập xác định $D$ của hàm số]

#note[
  - Bước 1: Tìm điều kiện xác định để biểu thức $f(x)$ có nghĩa.
  - Bước 2: Giải các phương trình hoặc bất phương trình điều kiện đó.
  - Bước 3: Kết luận tập xác định $D$ của hàm số dưới dạng khoảng, nửa khoảng, đoạn.
]

#example[Tìm tập xác định của các hàm số sau]
#flexgrid(
  cols: 2,
  [1) $y = x^3 - 2x + 1$],
  [2) $y = dfrac(-1, x + 1) + dfrac(2x, 5 - x)$],
  [3) $y = dfrac(3 - x, x^2 + 2x + 1)$],
  [4) $y = 2sqrt(2x - 5) + x$],
  [5) $y = sqrt(12 - 2x) + sqrt(x + 1)$],
  [6) $y = dfrac(x^2 + 2x - 5, sqrt(x + 3)) + dfrac(1, x - 5)$],
)

=== Hàm số bậc nhất

#note[
  - Hàm số bậc nhất là hàm số có dạng $y = f(x) = a x + b$ với $a eq.not 0$.
  - Tập xác định: $D = RR$.
  - Tập giá trị: $T = RR$.
  - ĐTHS của hàm bậc nhất là một đường thẳng.
  - $a$ được gọi là hệ số góc của đường thẳng; được tính bằng giá trị $tan alpha$ với $alpha$ là góc giữa đường thẳng $y = f(x)$ và trục hoành $O x$.
]

#remark()
1. Hai đường thẳng song song có cùng hệ số góc. Hai đường thẳng vuông góc có tích hệ số góc bằng -1.
2. Khi $a = 0$, hàm số bậc nhất trở thành hàm hằng $y = b$ có ĐTHS là một đường thẳng vuông góc với trục tung $O y$.

#example[Đồ thị hàm số $y = x + 1$]

#let f1(x) = calc.sin(x)
#let fn = (
  ($ x - x^3"/"3! $, x => x - calc.pow(x, 3) / 6),
  ($ x - x^3"/"3! - x^5"/"5! $, x => x - calc.pow(x, 3) / 6 + calc.pow(x, 5) / 120),
  ($ x - x^3"/"3! - x^5"/"5! - x^7"/"7! $, x => x - calc.pow(x, 3) / 6 + calc.pow(x, 5) / 120 - calc.pow(x, 7) / 5040),
)

#align(center)[
  #cetz.canvas({
    import cetz.draw: *

    plot.plot(
      size: (6, 6), // Kích thước khung đồ thị
      axis-style: "school-book", // Tạo hệ trục toạ độ Ox, Oy có mũi tên chuẩn
      x-label: [$x$],
      y-label: [$y$],
      x-tick-step: 1,
      y-tick-step: 1,

      // Giới hạn hiển thị của toàn bộ hệ trục
      x-min: -2,
      x-max: 3,
      y-min: -2,
      y-max: 3,
      {
        // Vẽ đồ thị hàm số y = x + 1
        plot.add(
          domain: (-2, 4), // Miền giới hạn vẽ của riêng hàm số này
          style: (stroke: colors.primary + 2pt), // Màu sắc và độ dày của đường
          x => x + 1,
        )

        // Vẽ thêm các đường gióng tọa độ (tùy chọn)
        // plot.add(
        //   ((2, 0), (2, 3), (0, 3)),
        //   style: (stroke: (dash: "dashed", paint: gray)),
        // )
        // 2. Vẽ 2 điểm (0, 1) và (-1, 0)
        plot.add(
          ((0, 1), (-1, 0)),
          style: (stroke: none), // Không vẽ đường thẳng nối 2 điểm
          mark: "o", // Sử dụng dấu chấm tròn
          mark-style: (fill: black, stroke: black), // Tô đen chấm tròn
          mark-size: 0.12, // Độ to của điểm
        )
      },
    )
  })
]

#note[
  Cách vẽ đồ thị hàm số bậc nhất $y = a x + b$ với $a eq.not 0$
  - Nếu $b eq.not 0$: Đồ thị hàm số là đường thẳng đi qua hai điểm $A(0; b)$ và $B(dfrac(-b, a);0)$.
  - Nếu $b = 0$: Đồ thị hàm số là đường thẳng đi qua gốc tọa độ $O(0;0)$ và điểm $A(1; a)$.
]

#remark() Hệ số góc $a > 0$ thì đường thẳng hướng lên trên; ngược lại, $a < 0$ thì đường thẳng hướng xuống.

#example[Vẽ đồ thị của các hàm số sau]

#flexgrid(
  cols: 3,
  [1) $y = - x + 2$],
  [2) $y = 2x - 6$],
  [3) $y = 3x$],
)

#note[
  Có thể tìm công thức hàm số bậc nhất bằng cách xác định hai hệ số a và b nếu biết một trong các điều kiện sau:
  - Tọa độ của ít nhất hai điểm nằm trên đường thẳng ĐTHS.
  - Góc giữa đường thẳng ĐTHS và trục hoành $O x$ và một điểm nằm trên đường thẳng ĐTHS.
]

#example[Xác định công thức của các hàm số có đồ thị được cho bên dưới]

#flexgrid(
  cols: (1fr, 1fr),
  alignment: top,
  [
    1)
    #cetz.canvas(length: 0.8cm, {
      import cetz.draw: *

      plot.plot(
        size: (5, 8), // Kích thước khung đồ thị
        axis-style: "school-book", // Tạo hệ trục toạ độ Ox, Oy có mũi tên chuẩn
        x-label: [$x$],
        y-label: [$y$],
        x-tick-step: none,
        y-tick-step: none,
        x-ticks: (-1, 1),
        y-ticks: (1, 5),

        // Giới hạn hiển thị của toàn bộ hệ trục
        x-min: -3,
        x-max: 2,
        y-min: -2,
        y-max: 6,
        {
          // Vẽ đồ thị hàm số y = x + 1
          plot.add(
            domain: (-4, 4), // Miền giới hạn vẽ của riêng hàm số này
            style: (stroke: colors.primary + 2pt), // Màu sắc và độ dày của đường
            x => 2 * x + 3,
          )

          // 2. Vẽ 2 điểm (0, 1) và (-1, 0)
          plot.add(
            ((-1, 1), (1, 5)),
            style: (stroke: none), // Không vẽ đường thẳng nối 2 điểm
            mark: "o", // Sử dụng dấu chấm tròn
            mark-style: (fill: black, stroke: black), // Tô đen chấm tròn
            mark-size: 0.12, // Độ to của điểm
          )

          // Vẽ thêm các đường gióng tọa độ (tùy chọn)
          plot.add(
            ((-1, 0), (-1, 1), (0, 1)),
            style: (stroke: (dash: "dashed", paint: gray)),
          )
          plot.add(
            ((1, 0), (1, 5), (0, 5)),
            style: (stroke: (dash: "dashed", paint: gray)),
          )
        },
      )
    })
  ],
  [
    2)
    #cetz.canvas(length: 0.8cm, {
      import cetz.draw: *
      import cetz.angle: *

      plot.plot(
        size: (6, 6), // Kích thước khung đồ thị
        axis-style: "school-book", // Tạo hệ trục toạ độ Ox, Oy có mũi tên chuẩn
        x-label: [$x$],
        y-label: [$y$],
        x-tick-step: none,
        y-tick-step: none,
        y-ticks: (3,),

        // Giới hạn hiển thị của toàn bộ hệ trục
        x-min: -2,
        x-max: 4,
        y-min: -2,
        y-max: 4,
        {
          // Vẽ đồ thị hàm số y = x + 1
          plot.add(
            domain: (-4, 4), // Miền giới hạn vẽ của riêng hàm số này
            style: (stroke: colors.primary + 2pt), // Màu sắc và độ dày của đường
            x => -x + 3,
          )

          // 2. Vẽ 2 điểm (0, 1) và (-1, 0)
          plot.add(
            ((0, 3),),
            style: (stroke: none), // Không vẽ đường thẳng nối 2 điểm
            mark: "o", // Sử dụng dấu chấm tròn
            mark-style: (fill: black, stroke: black), // Tô đen chấm tròn
            mark-size: 0.12, // Độ to của điểm
          )

          plot.annotate(
            angle((3, 0), (0, 3), (0, 0), radius: 1em, label-radius: 2em, label: $45 degree$),
          )
        },
      )
    })
  ],
)

=== Hàm số bậc hai

#note[
  - Hàm số bậc hai có dạng $y = f(x) = a x^2 + b x + c$ với $a eq.not 0$.
  - Tập xác định: $D = RR$
  - Đồ thị hàm số bậc hai là một đường parabol có đỉnh là điểm $I(dfrac(-b, 2a); dfrac(-Delta, 4a))$, có trục đối xứng là đường thẳng $x = dfrac(-b, 2a)$. Parabol này quay bề lõm lên trên nếu $a > 0$, xuống dưới nếu $a < 0$.
  - Để vẽ đường parabol $y = f(x) = a x^2 + b x + c$, ta tiến hành các bước sau:
    + Xác định tọa độ đỉnh $I(dfrac(-b, 2a); dfrac(-Delta, 4a))$ và trục đối xứng $x = dfrac(-b, 2a)$.
    + Xác định tọa độ giao điểm của parabol với trục tung, trục hoành (nếu có) và một số điểm đặc biệt khác.
    + Vẽ đường cong parabol đi qua các điểm đã xác định.
]


#align(center)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 2em,

    // ==========================================
    // ĐỒ THỊ 1: Parabol bề lõm hướng lên (a > 0)
    // ==========================================
    cetz.canvas({
      import cetz.draw: *

      plot.plot(
        size: (5, 5.5),
        axis-style: "school-book",
        x-label: [$x$],
        y-label: [$y$],
        x-min: -2,
        x-max: 4,
        y-min: -3,
        y-max: 4,
        x-tick-step: none,
        y-tick-step: none,
        x-ticks: (),
        y-ticks: (), // Ẩn các vạch số mặc định
        {
          // 1. Vẽ đường Parabol: y = x^2 - 2x - 1
          // Có đỉnh I(1, -2), cắt trục tung tại c = -1, nghiệm x1 ≈ -0.41, x2 ≈ 2.41
          plot.add(
            domain: (-1.2, 3.2),
            style: (stroke: colors.primary + 1.2pt),
            x => calc.pow(x, 2) - 2 * x - 1,
          )

          // 2. Trục đối xứng d (x = 1)
          plot.add(
            ((1, -3), (1, 4)),
            style: (stroke: (dash: "dashed", paint: black, thickness: 0.8pt)),
          )

          // 3. Đường gióng từ đỉnh I vào trục tung
          plot.add(
            ((0, -2), (1, -2)),
            style: (stroke: (dash: "dashed", paint: black, thickness: 0.8pt)),
          )

          // 4. Chấm điểm đỉnh I
          plot.add(
            ((1, -2),),
            style: (stroke: none),
            mark: "*",
            mark-style: (fill: black),
            mark-size: 0.1,
          )

          // 5. Ghi chú các ký hiệu toán học
          plot.annotate({
            content((0, 0), [$O$], anchor: "north-west", padding: 0.15)
            content((-0.41, 0), [$x_1$], anchor: "north-east", padding: 0.15)
            content((2.41, 0), [$x_2$], anchor: "north-west", padding: 0.15)
            content((1, 0), [$-b/(2a)$], anchor: "north-west", padding: 0.15)
            content((0, -1), [$c$], anchor: "east", padding: 0.15)
            content((0, -2), [$-Delta/(4a)$], anchor: "east", padding: 0.15)
            content((1, -2), [$I$], anchor: "north-west", padding: 0.15)
          })
        },
      )
    }),

    // ==========================================
    // ĐỒ THỊ 2: Parabol bề lõm hướng xuống (a < 0)
    // ==========================================
    cetz.canvas({
      import cetz.draw: *

      plot.plot(
        size: (5, 5.5),
        axis-style: "school-book",
        x-label: [$x$],
        y-label: [$y$],
        x-min: -2,
        x-max: 4,
        y-min: -3,
        y-max: 4,
        x-tick-step: none,
        y-tick-step: none,
        x-ticks: (),
        y-ticks: (),
        {
          // 1. Vẽ đường Parabol: y = -x^2 + 2x + 1.5
          // Có đỉnh I(1, 2.5), cắt trục tung tại c = 1.5, nghiệm x1 ≈ -0.58, x2 ≈ 2.58
          plot.add(
            domain: (-1.1, 3.1),
            style: (stroke: colors.primary + 1.2pt),
            x => -calc.pow(x, 2) + 2 * x + 1.5,
          )

          // 2. Trục đối xứng d (x = 1)
          plot.add(
            ((1, -3), (1, 4)),
            style: (stroke: (dash: "dashed", paint: black, thickness: 0.8pt)),
          )

          // 3. Đường gióng từ đỉnh I vào trục tung
          plot.add(
            ((0, 2.5), (1, 2.5)),
            style: (stroke: (dash: "dashed", paint: black, thickness: 0.8pt)),
          )

          // 4. Chấm điểm đỉnh I
          plot.add(
            ((1, 2.5),),
            style: (stroke: none),
            mark: "*",
            mark-style: (fill: black),
            mark-size: 0.1,
          )

          // 5. Ghi chú các ký hiệu toán học
          plot.annotate({
            content((0, 0), [$O$], anchor: "north-west", padding: 0.15)
            content((-0.58, 0), [$x_1$], anchor: "south-east", padding: 0.15)
            content((2.58, 0), [$x_2$], anchor: "south-west", padding: 0.15)
            content((1, 0), [$-b/(2a)$], anchor: "north-west", padding: 0.15)
            content((0, 1.5), [$c$], anchor: "east", padding: 0.15)
            content((0, 2.5), [$-Delta/(4a)$], anchor: "east", padding: 0.15)
            content((1, 2.5), [$I$], anchor: "south-west", padding: 0.15)
          })
        },
      )
    }),
  )
]

Sự đồng biến và nghịch biến của hàm số bậc hai
#note[
  - Nếu $a > 0$ hàm số nghịch biến trên $(-infinity; dfrac(-b, 2a))$ và đồng biến trên $(dfrac(-b, 2a); +infinity)$.

  - Nếu $a < 0$ hàm số đồng biến trên $(-infinity; dfrac(-b, 2a))$ và nghịch biến trên $(dfrac(-b, 2a); +infinity)$.
]

#example[Vẽ đồ thị hàm số của các đường parabol sau và cho biết các khoảng đồng biến và nghịch biến của chúng]

#flexgrid(
  cols: 4,
  col-gap: 2em,
  [1) $y = x^2 - 2x + 3$],
  [2) $y = -2x^2 + 4x + 6$],
  [3) $y = x^2 + 3$],
  [4) $y = -x^2 - x + 2$],
)

#section[Cách xác định công thức hàm số bậc hai $y = a x^2 + b x + c$ từ ĐTHS]

#note[
  Có thể nội suy công thức hàm số bậc hai từ ĐTHS trong các trường hợp khi biết:

  - Hàm số đi qua 3 điểm phân biệt.

  - Hàm số có trục đối xứng $x = dfrac(-b, 2a)$ và đi qua 2 điểm phân biệt khác.

  - Hàm số có đỉnh tại $I(dfrac(-b, 2a); dfrac(-Delta, 4a))$ và đi qua một điểm phân biệt khác.
]

#example[Xác định các hàm số bậc hai biết]
#flexgrid(
  cols: 1,
  row-gap: 1em,
  [a) Đường parabol đi qua 3 điểm $A(0; 2)$, $B(1; 0)$ và $C(3; 2)$.],
  [b) Đường parabol có đỉnh tại $I(1; -1)$ và đi qua điểm $M(2; 1)$.],
  [c) Đường parabol cắt trục hoành tại hai điểm có hoành độ $x_1 = 1$, $x_2 = 3$ và đi qua điểm $M(2; 2)$.],
  [d) Đường parabol có trục đối xứng $x = -2$ và đi qua hai điểm $A(-1; 0)$, $B(0; 3)$.],
)

= BÀI TẬP RÈN LUYỆN

#ex[Sử dụng hằng đẳng thức, khai triển các biểu thức sau]
#flexgrid(
  cols: 5,
  col-gap: 3em,
  [1) $x^2 - 9$],
  [2) $9x^2 - 25$],
  [3) $4x^2 - y^2$],
  [4) $(x + 5)^2$],
  [5) $(3x - 2)^2$],
  [6) $(2x + 3y)^2$],
  [7) $(x - 4)^3$],
  [8) $(3x + 1)^3$],
  [9) $x^3 + 27$],
  [10) $27x^3 - 8$],
)

// Bài tập tương tự Ví dụ 2: Biểu thức, đa thức
#ex[Trong các biểu thức dưới đây, biểu thức nào là đa thức và cho biết bậc của chúng?]
#flexgrid(
  cols: 3,
  [1) $2x^4 - x^2 + 5x - 3$],
  [2) $3x^2y - x y^2 + 5x y - 1$],
  [3) $dfrac(2, x - 1) + 3x^2 - x$],
  [4) $sqrt(2x + 1) - x^2 + 4$],
  [5) $5 - 2y + 4y^2 - y^4$],
  [6) $2x^3 - 3x sqrt(y) + 5$],
)

// Bài tập tương tự Ví dụ 3: Thu gọn biểu thức
#ex[Thu gọn các biểu thức sau]
#flexgrid(
  cols: 2,
  [1) $2x^2 + 3x - x^2 + 4x - 1$],
  [2) $3(x^2 - 2) - 2(5 - 2x) + x$],
  [3) $(x - 2) dot x - (x + 2)^2$],
  [4) $2x y^2 - x y - 3x y^2 + 4x y - 2x^2y + 3$],
  [5) $(3x - 1)(3x + 1) - (2x - 5)^2$],
  [6) $(x + 2)^3 - (x + 1)(x^2 - x + 1)$],
  [7) $dfrac(x + 2, x + 1) + dfrac(x - 1, x - 2) - 2$],
  [8) $2 - dfrac(3, (x - 1)^2)$],
)

// Bài tập tương tự Ví dụ 5: Điều kiện xác định
#ex[Tìm điều kiện xác định của các biểu thức sau]
#flexgrid(
  cols: 3,
  [1) $2x^3 - 5x^2 + x - 7$],
  [2) $dfrac(3x + 1, 2x - 4)$],
  [3) $dfrac(x^2 - 3x + 2, 5x + 2)$],
  [4) $sqrt(2x - 6) + 5$],
  [5) $sqrt(x - 1) - sqrt(8 - 4x)$],
  [6) $dfrac(5, sqrt(2x + 4)) - sqrt(3x - 2)$],
)

// Bài tập tương tự Ví dụ 6: Phương trình bậc nhất một ẩn
#ex[Giải các phương trình sau]
#flexgrid(
  row-gap: 2em,
  [1) $3x - 12 = 0$],
  [2) $2x - 1 = 5x + 8$],
  [3) $x^2 + 3x - 2 = x(x + 4)$],
  [4) $dfrac(2, x - 3) + dfrac(x, x + 2) = 1$],
)

// Bài tập tương tự Ví dụ 7: Phương trình bậc hai một ẩn
#ex[Giải các phương trình sau]
#flexgrid(
  cols: 3,
  [1) $x^2 - 5x + 6 = 0$],
  [2) $9x^2 - 6x + 1 = 0$],
  [3) $3x^2 - 8x + 4 = 0$],
  [4) $x^2 - 4x - 3 = 0$],
  [5) $dfrac(3x, x - 1) - dfrac(x + 1, x - 2) = 2$],
  [6) $dfrac(2x, x + 2) - dfrac(x - 1, x - 3) = -1$],
)

// Bài tập tương tự Ví dụ 8: Hệ phương trình
#ex[Giải các hệ phương trình sau]
#flexgrid(
  [1) $display(cases(3x + 2y = 7, 2x - y = 0))$],
  [2) $display(cases(x - y + 2z = 5, 2x + y - z = -1, x + y + z = 4))$],
)

// Bài tập tương tự Ví dụ 9: Bất phương trình
#ex[Giải các bất phương trình sau]
#flexgrid(
  [1) $-2x + 4 > 3x - 1$],
  [2) $dfrac(2x - 1, 2) + dfrac(x + 2, 5) >= 3$],
)

// Bài tập tương tự Ví dụ 10: Tập hợp
#ex[Cho tập hợp $A$ gồm các số nguyên lớn hơn hoặc bằng $-2$ và nhỏ hơn $4$. Viết tập $A$ dưới hai dạng.]

// Bài tập tương tự Ví dụ 11: Các phép toán trong tập hợp
#ex[Tìm các tập hợp $A union B$, $A inter B$, $A \\ B$, $B \\ A$, $C_RR A$ của hai tập hợp $A$ và $B$]
#flexgrid(
  [1) $A = (-4, 2]$ và $B = [0, +infinity)$],
  [2) $A = {x in RR | x >= 2}$ và $B = {x in RR | x < 5}$],
)

// Bài tập tương tự Ví dụ 12: Tìm tập xác định của hàm số
#ex[Tìm tập xác định của các hàm số sau]
#flexgrid(
  cols: 2,
  [1) $y = 2x^3 + x^2 - 5$],
  [2) $y = dfrac(2, x - 3) + dfrac(x, 4 + x)$],
  [3) $y = dfrac(x + 2, x^2 - 4x + 4)$],
  [4) $y = 3sqrt(3x - 1) - 2x$],
  [5) $y = sqrt(8 - x) + sqrt(2x + 3)$],
  [6) $y = dfrac(x^2 - x + 1, sqrt(x - 1)) + dfrac(3, x - 4)$],
)

// Bài tập tương tự Ví dụ 14: Vẽ đồ thị các hàm số
#ex[Vẽ đồ thị của các hàm số sau (Bài tập rèn luyện)]
#flexgrid(
  cols: 3,
  [1) $y = x - 3$],
  [2) $y = -3x + 1$],
  [3) $y = -2x$],
)

// Bài tập tương tự Ví dụ 15: Xác định công thức hàm số từ đồ thị
#ex[Xác định công thức của các hàm số có đồ thị được cho bên dưới]
#flexgrid(
  cols: (1fr, 1fr),
  alignment: top,
  [
    1)
    #cetz.canvas(length: 0.8cm, {
      import cetz.draw: *

      plot.plot(
        size: (5, 8),
        axis-style: "school-book",
        x-label: [$x$],
        y-label: [$y$],
        x-tick-step: none,
        y-tick-step: none,
        x-ticks: (-2, 2),
        y-ticks: (-1, 3),

        x-min: -3,
        x-max: 3,
        y-min: -2,
        y-max: 5,
        {
          plot.add(
            domain: (-3, 3),
            style: (stroke: colors.primary + 2pt),
            x => x + 1,
          )

          plot.add(
            ((-2, -1), (2, 3)),
            style: (stroke: none),
            mark: "o",
            mark-style: (fill: black, stroke: black),
            mark-size: 0.12,
          )

          plot.add(
            ((-2, 0), (-2, -1), (0, -1)),
            style: (stroke: (dash: "dashed", paint: gray)),
          )
          plot.add(
            ((2, 0), (2, 3), (0, 3)),
            style: (stroke: (dash: "dashed", paint: gray)),
          )
        },
      )
    })
  ],
  [
    2)
    #cetz.canvas(length: 0.8cm, {
      import cetz.draw: *
      import cetz.angle: *

      plot.plot(
        size: (6, 6),
        axis-style: "school-book",
        x-label: [$x$],
        y-label: [$y$],
        x-tick-step: none,
        y-tick-step: none,
        y-ticks: (2,),

        x-min: -2,
        x-max: 4,
        y-min: -2,
        y-max: 4,
        {
          plot.add(
            domain: (-4, 4),
            style: (stroke: colors.primary + 2pt),
            x => x + 2,
          )

          plot.add(
            ((0, 2),),
            style: (stroke: none),
            mark: "o",
            mark-style: (fill: black, stroke: black),
            mark-size: 0.12,
          )

          plot.annotate(
            angle((-2, 0), (0, 0), (0, 2), radius: 1em, label-radius: 2em, label: $45 degree$),
          )
        },
      )
    })
  ],
)

// Bài tập tương tự Ví dụ 16: Vẽ đồ thị Parabol và xét biến thiên
#ex[Vẽ đồ thị hàm số của các đường parabol sau và cho biết các khoảng đồng biến và nghịch biến của chúng]
#flexgrid(
  cols: 4,
  col-gap: 2em,
  [1) $y = x^2 - 4x + 3$],
  [2) $y = -x^2 + 2x + 3$],
  [3) $y = 2x^2 - 2$],
  [4) $y = -2x^2 + 4x$],
)

// Bài tập tương tự Ví dụ 17: Xác định hàm số bậc hai
#ex[Xác định các hàm số bậc hai biết]
#flexgrid(
  cols: 1,
  row-gap: 1em,
  [a) Đường parabol đi qua 3 điểm $A(0; 1)$, $B(1; -1)$ và $C(2; 3)$.],
  [b) Đường parabol có đỉnh tại $I(-1; 2)$ và đi qua điểm $M(1; -2)$.],
  [c) Đường parabol cắt trục hoành tại hai điểm có hoành độ $x_1 = -1$, $x_2 = 2$ và đi qua điểm $M(1; -4)$.],
  [d) Đường parabol có trục đối xứng $x = 1$ và đi qua hai điểm $A(0; 3)$, $B(3; 0)$.],
)
