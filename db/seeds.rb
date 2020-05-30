# frozen_string_literal: true

10.times do |i|
  Blog.create!(
    title: "Blog #{i}",
    body: Faker::Lorem.paragraph
  )
end

puts 'Blogs Created'

5.times do |_i|
  Skill.create!(
    name: Faker::ProgrammingLanguage.name,
    percent_utilized: 20
  )
end

puts 'Skills Created'

9.times do |i|
  Portfolio.create!(
    title: "Portfolio #{i}",
    subtitle: Faker::Lorem.words,
    body: Faker::Lorem.paragraph,
    main_image: 'https://via.placeholder.com/600x400',
    thumb_image: 'https://via.placeholder.com/350x200'
  )
end

puts 'Portfolios Created'
