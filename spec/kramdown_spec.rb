require 'rubygems'
require 'bundler/setup'

require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require 'haml'
require 'haml/filters/kramdown'

describe Haml::Filters::Kramdown do
  it 'works' do
    value = 'world'
    scope = binding
    text = """
.greeting
  :kramdown
    # Hello \#{value}
"""

    html = """
<div class='greeting'>
  <h1 id=\"hello-world\">Hello world</h1>
</div>
"""

    assert_equal html.strip, Haml::Engine.new(text).to_html(scope).strip
  end
end
