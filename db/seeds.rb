require "faker"
Faker::Config.locale = :ja

# 1000件の初期データを投入
50.times do
  Post.create!(body: Faker::Artist.name)
end

puts "初期データの投入に成功しました！"