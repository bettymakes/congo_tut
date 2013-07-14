require 'spec_helper'

describe 'Visitor' do  #describes the 'who'
  context 'visits the front page' do #context does the 'what' the 'who' is doing
    it {should visit root_path} #it, is the test
    it 'displays content on page' do
      (1..3).each do |x|
        FactoryGirl.create(:product)
      end
      visit root_path
      page.should have_selector('table')
      page.all('tr').should have(3).items
      page.all('td').should have(9).items
    end
  end
end