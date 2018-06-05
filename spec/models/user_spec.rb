require 'rails_helper'
RSpec.describe User, type: :model do
  it "test new user creation with valid attributes to be valid" do
    @user = create(:user)
    expect(@user).to be_valid
  end
  it "test new user creation with not unique username not to be valid" do
    @user = create(:user, username:"gltroncossi", email:"mail@gmail.com",password:"000")
    @user2 = build(:user)
    expect(@user2).to_not be_valid
  end
  it "test new user creation with not unique email not to be valid" do
    @user = create(:user, username:"gltro", email:"gtroncossi@miuandes.cl",password:"23456")
    @user2 = build(:user)
    expect(@user2).to_not be_valid
  end
  it "test new user creation with longer than 20 characters username not to be valid" do
    @user = build(:user, username:"nombre1123456789765421234567654321")
    expect(@user).to_not be_valid
  end
end
