require 'spec_helper'

describe ProtobufSpec::Matchers::BeProtobufEql do
  before(:each) do
    @sample = Sample.new
    @sample.string_field="foo"
  end

  it "matches at a path"  do
    @sample.should be_protobuf_eql("foo").at_path("string_field")
  end

  it "doesn't match for unset path"  do
    @sample.should_not be_protobuf_eql("").at_path("string_field_2")
  end

end
