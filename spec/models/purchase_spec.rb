require 'rails_helper'

RSpec.describe Purchase, type: :model do
  before :each do
    @u = User.new(name: 'test', password: 'testpass', email: 'test@test.com')
    @u.save
  end

  subject do
    @p = Purchase.new(name: 'test', amount: 100)
  end
  before { subject.save }

  describe 'validate data' do
    it 'it should have a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'should have an amount' do
      subject.amount = nil
      expect(subject).to_not be_valid
    end

    it 'the amount should be numerical' do
      subject.amount = 'a'
      expect(subject).to_not be_valid
    end
  end

end