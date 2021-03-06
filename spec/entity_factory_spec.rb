require 'spec_helper'

describe "Intrigue" do
describe "EntityFactory" do

  it "should allow us to create a DnsRecord" do
    x = Intrigue::EntityFactory.create_by_type "DnsRecord", {"name" => "test.com", "woot" => "woot"}
    expect(x).to be_kind_of Intrigue::Entity::DnsRecord
  end

  it "should return false if validation fails" do
    x = Intrigue::EntityFactory.create_by_type "DnsRecord", {"notaname" => "willy"}
    expect(x).to be false
  end

  it "should give us false on an invalid type" do
    x = Intrigue::EntityFactory.create_by_type "DoesntExist", {"name" => "test.com"}
    expect(x).to be false
  end


end
end
