require 'spec_helper'

describe 'Visitor' do  #describes the 'who'
  context 'visits the front page' do #context does the 'what' the 'who' is doing
    it {should visit root_path} #it, is the test
    it 'displays content on page' do
      (1..2).each do |x|
        product = FactoryGirl.create(:product)
      end
      product = FactoryGirl.create(:product)
      visit root_path
      page.should have_selector('table')
      page.all('tr').should have(3).items
      page.all('td').should have(9).items
      page.should have_content(product.name)
      page.should have_content(product.description)
      page.should have_content(product.price)
    end
  end

  context 'vists the product page' do
    visit root_path
    click_link ("Show Product")
  end
end