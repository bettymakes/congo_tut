require 'spec_helper'

describe 'Visitor' do  #describes the 'who'
  context 'visits the front page' do #context does the 'what' the 'who' is doing
    it {should visit root_path} #it, is the test
    it 'displays content on page' do
      visit root_path
      page.should have_selector('table')
    end
  end
end