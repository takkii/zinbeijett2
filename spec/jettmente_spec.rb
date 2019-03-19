# frozen_string_literal: true

require 'kconv'

# version class
module Zinbeijett
  module_function

  def version
    '0.3.4'
  end
end

describe 'Zinbeijett' do
  it ":expect say '0.3.4' when it receives the greet() message" do
    versioning = Zinbeijett.version
    expect(versioning) == '0.3.4'
  end
end
