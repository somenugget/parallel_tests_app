describe "Order creation", type: :feature, js: true do
  it "creates orders" do
    visit '/orders'

    10.times do |i|
      click_on('New Order')
      click_on('Create Order')
      click_on('Back')
    end

    expect(page).to have_content('Orders')
  end
end
