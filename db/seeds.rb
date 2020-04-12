# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lecture1 = Lecture.create!(
  [
    { title: 'ガイダンス', date: '2020-04-23' },
    { title: '確率変数と確率分布', date: '2020-04-30' }
  ]
)

lecture2 = Lecture.create!(
  [
    { title: 'データサイエンス基礎', date: '2020-05-23' },
    { title: 'ベイズ統計', date: '2020-05-30' }
    
  ]
)

teacher_name1 = Teacher.create!(name: '山田太郎')
teacher_name2 = Teacher.create!(name: '山田花子')

Subject.create!(
  [
    { title: '統計基礎', weekday: 'friday', period: 3, teacher: teacher_name1, lectures: lecture1 },
    { title: '統計解析', weekday: 'monday', period: 4, teacher: teacher_name2, lectures: lecture2 }
  ]
)