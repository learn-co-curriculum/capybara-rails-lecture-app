require 'rails_helper.rb'

feature 'Creating Movie' do
  scenario 'able to create a movie' do 
    # 1: Go to root route and click on "Add Movie" button
    visit '/'
    # 2: Click on "Add Movie" button
    click_link 'Add Movie'
    # 3: Fill in form with title and release_year 
    fill_in 'movie_title', with: 'Jurassic Park'
    fill_in 'movie_release_year', with: 1993
    # 4: Click on "Create Movie" submit button
    click_button 'Create Movie'
    # 5: Expect a redirect to the show page with the movie's details
    expect(page).to have_content('Jurassic Park')
    expect(page).to have_content(1993)
  end
end