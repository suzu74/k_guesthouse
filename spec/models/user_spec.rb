require 'rails_helper'

RSpec.describe User, type: :model do
  it "バリデーションを通過できる" do
    user = User.new(
      name: "Test", 
      email:      "tester@example.com",
      password:   "testtest",
      password_confirmation: "testtest",
    )
    expect(user).to be_valid
  end

  it "名前が空だとバリデーションを通過でき" do
    user = User.new(
      name: ""
    )
    expect(user).to be_invalid
  end
end
