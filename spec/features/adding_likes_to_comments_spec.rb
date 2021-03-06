# frozen_string_literal: true

feature 'user can like a comment' do
  scenario 'from another users homepage' do
    sign_up
    create_post
    click_link 'Home'
    create_post
    click_link 'Sign Out'
    sign_up_two
    click_link 'Home'
    click_link 'uvalente'
    create_comment
    all('a', text: '❤️')[1].click
    expect(page).to have_content('1 Like')
    expect(page).to have_selector(:link, '💔')
  end
  scenario 'from the homepage' do
    sign_up
    click_link 'Home'
    create_post
    create_comment
    all('a', text: '❤️')[1].click
    expect(page).to have_content('1 Like')
    expect(page).to have_selector(:link, '💔')
  end
end
