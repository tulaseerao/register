
require 'spec_helper'

describe Dependent do
  before do
    @dependent = Dependent.create(first_name: "test", last_name: "best")
  end

  subject { @dependent }

  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should be_valid }

  describe 'when first_name is not present' do
    before { @dependent.first_name = '' }
    it { should_not be_valid }
  end

  describe 'when last_name is not present' do
    before { @dependent.last_name = '' }
    it { should_not be_valid }
  end
end
