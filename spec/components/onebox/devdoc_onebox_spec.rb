require 'spec_helper'
load File.expand_path('../../../helpers.rb', __FILE__)
describe Onebox::Engine::DevdocOnebox do
  let(:link) { "https://dov.magentochina.org" }
  let(:html) { described_class.new(link).to_html }
  before do
    fake(link, response("devdoc.response"))
  end
end
