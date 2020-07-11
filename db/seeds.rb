# frozen_string_literal: true

3.times do
  Topic.create!(title: Faker::TvShows::GameOfThrones.house)
end

puts 'Topics crated'

10.times do |i|
  Blog.create!(
    title: "Blog #{i}",
    body: Faker::Lorem.paragraph,
    topic: Topic.all.sample
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

5.times do |_i|
  Portfolio.all.sample.technologies.create!(
    name: Faker::ProgrammingLanguage.name
  )
end

puts 'Technologies Created'
