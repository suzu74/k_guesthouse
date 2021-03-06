require 'rails_helper'

RSpec.feature 'BasicPages', type: :feature do

  scenario 'topページに訪れてtitleが正しくaboutページへのリンクがある' do
    visit root_path
    expect(page).to have_title "K-Guesthouse"
    expect(page).to have_link 'About', href: about_path
  end

  scenario 'Aboutページに訪れてtitleが正しくtopページへのリンクがある' do
    visit about_path
    expect(page).to have_title "About | K-Guesthouse"
    expect(page).to have_link 'Home', href: root_path
  end

  scenario 'topページから登録ページへ行ける' do
    visit root_path
    click_on "早速登録する！"
    expect(current_path).to eq signup_path
    expect(page).to have_content "Email"
  end
end
