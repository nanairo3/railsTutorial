require 'rails_helper'

RSpec.feature "StaticPages", type: :feature do
  describe "Home page" do
    before do
      visit root_path   # 名前付きルートを使用
    end

    # HomeページにStaticPages#homeと表示されていること
    it "should have the content 'StaticPages#home'" do
      expect(page).to have_title "Ruby on Rails Tutorial Sample App"
    end
  end

  describe "Help Page" do
    before do
      visit help_path
    end

    it "should have the content Help" do
      expect(page).to have_title "Help | Ruby on Rails Tutorial Sample App"
    end
  end

  describe "Abuot Page" do
    before do
      visit about_path
    end

    it "should have the content About" do
      expect(page).to have_title "About | Ruby on Rails Tutorial Sample App"
    end
  end

end
