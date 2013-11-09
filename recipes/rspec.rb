gem 'rspec-rails', '>= 2.0.1', :group => [:development, :test]

inject_into_file "config/initializers/generators.rb", :after => "Rails.application.config.generators do |g|\n" do
  "    g.test_framework = :rspec\n"
end

after_bundler do
  generate 'rspec:install'
end

gem 'capybara', :group => [:development, :test]

after_bundler do
  create_file "spec/support/capybara.rb", <<-RUBY
require 'capybara/rails'
require 'capybara/rspec'
RUBY

  create_file "spec/requests/home_spec.rb", <<-RUBY
require 'spec_helper'

describe 'visiting the homepage' do
  before do
    visit '/'
  end

  it 'should have a body' do
    page.should have_css('body')    
  end
end
RUBY
end

__END__

name: RSpec
description: "Use RSpec for unit testing for this Rails app."
author: mbleigh

exclusive: unit_testing
category: testing

args: ["-T"]

