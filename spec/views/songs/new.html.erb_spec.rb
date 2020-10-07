RSpec.describe 'songs/new', type: :feature do
  it 'renders form' do
    visit new_song_path

    form = find('form')

    expect(form.find('input#song_title')[:name]).to eq('title')
    expect(form.find('input#song_release_year')[:name]).to eq('release_year')
    expect(form.find('input#song_released')[:name]).to eq('released')
    expect(form.find('input#song_genre')[:name]).to eq('genre')
    expect(form.find('input#song_artist_name')[:name]).to eq('song[artist_name]')
  end
end
