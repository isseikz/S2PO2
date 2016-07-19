# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Problem.create!([
  {theme_id: 1, category: 0, level: 3, content: "<p> \\(sin\\theta+cos\\theta=\\frac{1}{3}\\)のとき，次の式の値を求めよ.</p>\r\n                <ol>\r\n                  <li class=\"questions\">\\(sin\\theta cos\\theta,\\ sin^3\\theta + cos^3\\theta\\)</li>\r\n                  <li class=\"questions\">\\(sin \\theta - cos \\theta \\  (\\frac{\\pi}{2} < \\theta < \\pi ) \\)</li>\r\n                </ol>", answer: "<ol>\r\n                  <li>\\(sin\\theta cos\\theta=- \\frac{4}{9},\\ \\)\\(sin^3\\theta+cos^3\\theta=\\frac{13}{27}\\)</li>\r\n                  <li>\\(\\frac{\\sqrt{17}}{3}\\)</li>\r\n                </ol>", correct_counter: 0, section_id: 1}
])
