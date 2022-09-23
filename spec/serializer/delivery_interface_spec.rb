require 'rails_helper'

class TempSerializeClass
  include SerializerInterface
end

RSpec.describe SerializerInterface do
  describe "Check contract" do
    it "should raise a error" do
      temp = TempSerializeClass.new
      expect  { temp.serialize }.to raise_error(StandardError)
    end
  end
end
