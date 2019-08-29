require 'rails_helper'


describe 'home' do
  specify 'titleの表示' do
    visit '/'
    expect(page).to have_title 'Home | Ruby on Rails Tutorial Sample App'
  end
end

describe 'home' do
  specify 'titleの表示' do
    visit '/static_pages/home'
    expect(page).to have_title 'Home | Ruby on Rails Tutorial Sample App'
  end
end

describe 'help' do
  specify 'titleの表示' do
    visit '/static_pages/help'
    expect(page).to have_title 'Help | Ruby on Rails Tutorial Sample App'
  end
end

describe 'about' do
  specify 'titleの表示' do
    visit '/static_pages/about'
    expect(page).to have_title 'About | Ruby on Rails Tutorial Sample App'
  end
end