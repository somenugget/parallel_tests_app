describe "Product creation", type: :feature, js: true do
  it "creates products" do
    visit '/products'

    10.times do |i|
      click_on('New Product')
      fill_in('Name', with: "Product #{i}")
      fill_in('Price', with: i + 10)
      fill_in('Description', with: "yo yo #{i}")
      click_on('Create Product')
      click_on('Back')
    end

    expect(page).to have_content('Products')
  end
end
