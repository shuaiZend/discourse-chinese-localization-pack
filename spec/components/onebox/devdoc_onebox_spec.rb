require 'spec_helper'
load File.expand_path('../../../helpers.rb', __FILE__)

describe Onebox::Engine::DevdocOnebox do
  before do
    FakeWeb.register_uri(:get, 'https://music.163.com/#/song?id=691506', body: response('Devdoc'), content_type: 'text/html')
  end
end
