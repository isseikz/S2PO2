Problem.create!([
  {theme_id: 1, category: 0, level: 3, content: "<p> \\(sin\\theta+cos\\theta=\\frac{1}{3}\\)のとき，次の式の値を求めよ.</p>\r\n                <ol>\r\n                  <li class=\"questions\">\\(sin\\theta cos\\theta,\\ sin^3\\theta + cos^3\\theta\\)</li>\r\n                  <li class=\"questions\">\\(sin \\theta - cos \\theta \\  (\\frac{\\pi}{2} < \\theta < \\pi ) \\)</li>\r\n                </ol>", answer: "<ol>\r\n                  <li>\\(sin\\theta cos\\theta=- \\frac{4}{9},\\ \\)\\(sin^3\\theta+cos^3\\theta=\\frac{13}{27}\\)</li>\r\n                  <li>\\(\\frac{\\sqrt{17}}{3}\\)</li>\r\n                </ol>", correct_counter: 0, section_id: 4}
])
Section.create!([
  {subject_id: 1, number: 1, title: "式と証明"},
  {subject_id: 1, number: 2, title: "複素数と方程式"},
  {subject_id: 1, number: 3, title: "図形と方程式"},
  {subject_id: 1, number: 4, title: "三角関数"}
])
Subject.create!([
  {title: "数学2"}
])
Theme.create!([
  {section_id: 4, number: 15, title: "一般角と三角関数"},
  {section_id: 4, number: 16, title: "三角関数のグラフと応用"}
])
User.create!([
  {first_name: "Issei", last_name: "Kuzumaki", email: "issey.macky@gmail.com", password_digest: "$2a$10$io6QwhjJO5UpP1YROrOfZuzTEFAXyi6sYmwzHh4fhmTrGKoUTla76"}
])
