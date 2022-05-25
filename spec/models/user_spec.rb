require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) { @u = User.new(name: 'test', password: 'testpass', email: 'test@test.com') }
  it 'name should be present' do
    expect(@u).to be_valid
    @u.name = nil
    expect(@u).to_not be_valid
  end
  it 'password should be present' do
    expect(@u).to be_valid
    @u.password = nil
    expect(@u).to_not be_valid
  end
  it 'email should be present' do
    expect(@u).to be_valid
    @u.email = nil
    expect(@u).to_not be_valid
  end
end
