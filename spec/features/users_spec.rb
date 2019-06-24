require 'rails_helper'

RSpec.feature 'Users', type: :feature do

  let!(:user_a) { create(:user) }

  scenario 'ユーザー登録に成功' do
    visit signup_path
    fill_in 'Name',         with: 'abc'
    fill_in 'Email',        with: 'a@example.com'
    fill_in 'Password',     with: 'password'
    fill_in 'Confirmation', with: 'password'
    click_button 'Create my account'
    expect(page).to have_content '登録が完了しました！'
  end

  scenario 'ログイン成功' do
    visit login_path
    fill_in 'Email', with: 'text1@example.com'
    fill_in 'Password',     with: 'password'
    click_button 'Log in'
    expect(page).to have_content 'ログインに成功しました！'
  end

end
