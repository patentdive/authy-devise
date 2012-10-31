require 'spec_helper'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..'))
require 'rails/generators'
require 'generators/devise_authy/devise_authy_generator'

describe "generators for devise_authy" do
  RAILS_APP_PATH = File.expand_path("../rails_app", __FILE__)

  it "rails g should include the generators" do
    @output = `cd #{RAILS_APP_PATH} && rails g`
    @output.include?('devise_authy:install').should be_true
    @output.include?('active_record:devise_authy').should be_true
  end

  it "rails g devise_authy:install" do
    @output = `cd #{RAILS_APP_PATH} && rails g devise_authy:install -p`
    @output.include?('config/locales/devise.authy.en.yml').should be_true
    @output.include?('app/views/devise/devise_authy/register.html.erb').should be_true
    @output.include?('app/views/devise/devise_authy/show.html.erb').should be_true
    @output.include?('create\e app/assets/stylesheets/devise_authy.css')
  end
end