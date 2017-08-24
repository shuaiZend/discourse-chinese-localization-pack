require 'spec_helper'
load File.expand_path('../../../helpers.rb', __FILE__)

describe Onebox::Engine::DevdocOnebox do
  before do
    FakeWeb.register_uri(:get, 'https://doc.magentochina.org/guides/v2.1/install-gde/install-quick-ref.html', body: response('Devdoc'), content_type: 'text/html')
  end
end
