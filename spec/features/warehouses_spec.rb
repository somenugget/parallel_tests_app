describe "Warehouse creation", type: :feature, js: true do
  it "creates warehouses" do
    visit '/warehouses'

    10.times do |i|
      click_on('New Warehouse')
      fill_in('Name', with: "Warehouse #{i}")
      fill_in('Location', with: "City #{i}")
      click_on('Create Warehouse')
      click_on('Back')
    end

    expect(page).to have_content('Warehouses')
  end
end
