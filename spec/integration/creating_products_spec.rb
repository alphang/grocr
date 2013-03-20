require 'spec_helper'

feature 'Creating Products'  do
  scenario "Can create a product" do
    visit '/'
    click_link 'New Product'
    fill_in 'Name', :with => 'Chunky Peanut Butter'
    fill_in 'Manufacturer', :with => 'Skippy'
    fill_in 'Price', :with => '3.69'
    fill_in 'Size', :with => '16.3 oz'
    fill_in 'Upc', :with => '048001006416'
    click_button 'Create Product'
    page.should have_content('Product has been created')
  end
end
