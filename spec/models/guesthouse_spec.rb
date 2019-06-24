require 'rails_helper'

RSpec.feature 'Guesthouses', type: :feature do
  before do
    user_a = create(:user)
    gutsthouse = create(:guesthouse, user: user_a)
  end

  scenario 'ログイン後にゲストハウスが表示されている' do
    visit login_path
    fill_in 'Email', with: 'text1@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
    expect(page).to have_content 'ゲストハウスA'
    click_on 'ゲストハウスA'
    expect(page).to have_content 'テストユーザー'
  end


end
