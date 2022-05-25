require 'rails_helper'

RSpec.describe Group, type: :model do
  before :each do
    @u = User.new(name: 'test', password: 'testpass', email: 'test@test.com')
    @u.save
  end

  subject do
    @p = Group.new(name: 'test', icon: Rack::Test::UploadedFile.new('spec/support/image.jpg', 'image/jpg'))
  end
  before { subject.save }

  describe 'validate data' do
    it 'it should have a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'should have an icon image' do
      subject.icon = nil
      expect(subject).to_not be_valid
    end
  end
end
