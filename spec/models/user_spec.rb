require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  it "バリデーションを通過できる" do
    expect(user).to be_valid
  end

  it "名前が空だとバリデーションを通過できない" do
    user = User.new(
      name: ""
    )
    expect(user).to be_invalid
  end

  it "メールが空だとバリデーションを通過できない" do
    user = User.new(
      email: ""
    )
    expect(user).to be_invalid
  end

  it "パスワードが空だとバリデーションを通過できない" do
    user = User.new(
      password: ""
    )
    expect(user).to be_invalid
  end
end
