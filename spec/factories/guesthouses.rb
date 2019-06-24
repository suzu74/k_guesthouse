FactoryBot.define do
  factory :guesthouse do
    name { 'ゲストハウスA' }
    content { '綺麗な部屋です。' }
    user
  end
end