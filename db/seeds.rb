User.create(username: 'joel', name: 'Joel Guerra', password: 'pw')

20.times do
  User.create(username: Faker::Internet.user_name, name: Faker::Name.name, password: 'pw')
end

100.times do
  Follow.create(user_id: rand(1..10), follower_id: rand(1..10))
end

images = [
'http://assets.pokemon.com/assets//cms2/img/play-games/_tiles/alolan_volcanic_panic/alolan-volcanic-panic-169.jpg',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs0NTJU5FcC20mdNgoel008YguY2wXwcXjG9L50fpOq9PPD9gd',
'https://cdn2.recombu.com/media/mobile/Features/PokemonGOTypes/PokemonTypesThumb_w460_h260.jpg',
'http://media.vanityfair.com/photos/57675d6d0904a5835f0daf57/master/w_768,c_limit/game-of-thrones-episode-9-9.jpg',
'http://blogs.tn.com.ar/nerds/files/2017/06/Jon.jpg',
'https://static.gamespot.com/uploads/original/1557/15576725/3102894-game-of-thrones-daenerys.jpg',
'http://nerdist.com/wp-content/uploads/2016/07/game-of-thrones-tyrion-boat-s5.jpg',
'http://digitalspyuk.cdnds.net/15/50/1600x800/landscape-1449498579-darth-vader-star-wars.jpg',
'https://i.ytimg.com/vi/_q51LZ2HpbE/maxresdefault.jpg',
'https://mi-od-live-s.legocdn.com/r/www/r/catalogs/-/media/catalogs/characters/star%20wars/new%20full%20body/updated/75103_captain-phasma_mugshot_672x896.png?l.r2=-1181400582
',
'https://people.ucsc.edu/~awong35/pokemon.jpg']

80.times do
  Entry.create!(user_id: rand(1..21), title: Faker::Book.title, caption: Faker::StarWars.quote, url: images.sample)
end
