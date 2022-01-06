require 'rails_helper'

RSpec.describe Service, type: :model do
  it "nameが存在すれば有効である事" do
    service = Service.new(name: 'service1')
    service.valid?
    expect(service.name).to eq 'service1'
  end

  it "nameが存在しなければ有効でない事" do
    service = Service.new(name: nil)
    service.valid?
    expect(service.errors.full_messages).to include("Name can't be blank")
  end
end
