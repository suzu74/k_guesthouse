require 'rails_helper'

RSpec.feature 'BasicPages', type: :feature do

  scenario 'カテゴリーページから商品詳細ページへ飛び、商品名が表示されている' do
    visit root_path
    expect(page).to have_title "K-Guesthouse"
    expect(page).to have_link 'About', href: about_path
  end

  scenario 'カテゴリーページから商品詳細ページへ飛び、商品名が表示されている' do
    visit about_path
    expect(page).to have_title "About | K-Guesthouse"
    expect(page).to have_link 'Home', href: root_path
  end
end
