User.create(name: 'Nick', password: 'password',
  password_confirmation: 'password')

User.create(name: 'Kasper', password: 'password',
  password_confirmation: 'password')

Hotel.create(
  name: 'Jakes 58',
  amenities: 'Jake’s 58 Hotel & Casino offers five comfortable lodging options to meet every need.' \
    'All of our 227 hotel rooms provide convenient access to the casino, restaurants, bars & lounges!',
  photo: 'jakes58_building.jpg'
)
Hotel.create(
  name: 'Mohegan Sun',
  amenities: 'Earth Tower rooms offer a desk area, amenities tray, refrigerator, marble bathrooms, ' \
    'video in-room dining menus and ordering with bill review and check-out accessibility; Wi-Fi and in-room iPad.',
  photo: 'mohegan_buliding.jpg'
)

roomtype_list = [
  ['Deluxe King', '​These signature rooms offer a spacious work desk, ' \
    'a 55-inch HDTV, a mini-fridge and ​plush  king beds. Located on the ' \
    'fifth floor in the main building and the second and third floors in ' \
    'the Tower buildings. These upper floor rooms feature a free evening ' \
    'wine and cheese reception. ​A​n iPod dock, a double vanity sink and an '\
    'illuminated mirror​ are a few of the additional features of the room.​',
    '​One King Bed', 'jakes58_deluxe_king.jpg'],
  ['Deluxe Queen', '​Unwind within these cozy and quiet rooms. Located on ' \
    'the first through the fourth floors in our five-story main building, ' \
    'they are beautifully decorated with residential style furnishings, ' \
    'white pillow-top bedding, walnut wood finishes and neutral accents. ' \
    'An ergonomic work area with a desk and seating area are also featured ' \
    'in these rooms.', 'One Queen Bed', 'mohegan_deluxe_queen.jpg'],
  ['One Bedroom Suite', 'These luxury Suites at Mohegan Sun have a ' \
    'spacious parlor, bedroom and marble bathroom with glass-enclosed ' \
    'showers and tubs. The bedroom and living room are separated by a door ' \
    'for privacy. Each of these modern suites are unique in decor, layout ' \
    'and size, but all have been updated with a sofa bed in the living room, ' \
    'flat-panel TVs, luxury linen ensembles, pillow top beds and Nespresso ' \
    'coffee machines. Also, each have windows that open and face the city ' \
    'which offer breath-taking views. Tower Building Suites may connect to ' \
    'a Executive King Room to make a 2 bedroom suite, based on availability. ' \
    'These suites are located in the Tower buildings on the third and ' \
    'fourth floors.', 'One King bed and one Full-size sofa bed',
    'mohegan_1_bedroom_suite.jpg'],
  ['Two Bedroom Suite', 'The Deluxe suites offer spectacular panoramic views ' \
    'of the city. The living room is separated from one bedroom by double ' \
    'doors, the other is in its own private section. These spacious suites' \
    'appeal to guests who appreciate extra space, in addition to the Bose ' \
    'sound system, wide luggage shelf and the myriad other features that ' \
    'create the ambiance of a home-away-from-home. Their located on the top ' \
    'floors of the Tower buildings, which offers an abundance of natural ' \
    'light. These luxurious suites features spectacular marble bathroom with ' \
    'separate bath and shower, sofa bed in the living room, flat-panel TVs, ' \
    'pillow top beds and Nespresso coffee machines. Certain suites can ' \
    'connect to One Bedroom suites based on availability.', 'One King bed, ' \
    'one Queen bed, and a Queen-zise sofa bed', 'mohegan_2_bedroom_suite.jpg'],
  ['Classic King', 'The Classic King rooms offer plenty of space to relax ' \
    'and rest after a long day. Specially-designed with a spacious work ' \
    'area, comfy King-sized bed and spacious bathrooms, this is a terrific ' \
    'option for the business professionals. These rooms are mainly located ' \
    'on the second floor.', 'One King bed', 'mohegan_deluxe_king.jpg'],
  ['Corner Suite', 'Classic, crisp and clean. These rooms feature plush ' \
    'furniture, polished wooden surfaces, leather accents and ample natural ' \
    'lighting. The Standard Queen rooms offer moderate accommodations for a ' \
    'maximum of two guests. Located on the first and second floors.',
    'One Queen bed', 'jakes58_corner_suite.jpg'],
  ['Double Queen', 'Spacious for up to four. Double Queen rooms offer ' \
    'accommodation for up to four guests. For families or small parties, ' \
    'everyone will enjoy ample space. These are available with two full or ' \
    'two queen-sized beds. Located on the first and second floors. Select ' \
    'rooms are available with a bathtub and shower, however all rooms ' \
    'feature a shower.', 'Two Queen bed', 'mohegan_double_queen.jpg'],
  ['Acessible Suite', 'Offering the greatest space and utlity of any ' \
    'of our rooms, the Acessible Suite is a one bedroom suite that ' \
    'comfortably hosts up to four guests. With snug King or Queen beds and ' \
    'spacious bathrooms, this is a terrific option for families with needs. ' \
    'These rooms are located only on the first floor for your convenience.', 'One King or Queen ' \
    'bed and one Full-size sofa bed', 'jakes58_accessible_room.jpg']
]

roomtype_list.each do |room_type|
  RoomType.create(
    name: room_type[0],
    description: room_type[1],
    beds: room_type[2],
    photo: room_type[3]
  )
end

room_list = [
  [90, 5, 1, 1],
  [75, 12, 2, 1],
  [105, 9, 3, 1],
  [120, 4, 4, 1],
  [80, 5, 5, 2],
  [70, 6, 6, 2],
  [90, 10, 7, 2],
  [100, 9, 8, 2]
]

room_list.each do |room|
  Room.create(
    room_rate: room[0],
    inventory: room[1],
    room_type_id: room[2],
    hotel_id: room[3],
  )
end

setup_addresses = [
  ['852 E Dr', 'Uncasville', 'CT',	16382,   'Home', 3],
  ['11 Broadway #260', 'Learn.co', 'New York',	'NY',	10004,	'Work', 1],
  ['3635 Express Drive N', 'Islandia','NY', 11749, 'Home', 2]
]

setup_addresses.each do |address|
  Address.create(
    street_1: address[0],
    street_2: address[1],
    city: address[2],
    state: address[3],
    zipcode: address[4],
    address_type: address[5],
    user_id: address[6]
  )
end

startup_reviews = [
  [7, 'This place is super comfy! the BEST', 2],
  [7, "The price for this AMAZING room, is killer! If I didn't have to " \
    "go back to work, I definitely would have stayed longer!", 4],
  [2, 'Great for affordability, but not very spacious and I could have ' \
    'used more wall outlets', 7],
  [5, 'I travel light, so I had enough room. But the remote was hard to ' \
    'work with', 5],
  [5, 'The free wine is very helpful after a long days work, and it creates '\
    'a very social atmosphere', 1],
  [5, 'Room service is great!', 1],
  [1, 'Was just the bed I needed to get some good rest. I like firm beds', 6],
  [1, 'Easy in, easy out, and clean', 5],
  [1, "It gets so much during light the day, it's awesome", 2],
  [3, 'spent the weekend here, it was ok, but had a good variety of food ' \
    'for breakfast', 7]
]

startup_reviews.each do |review|
  Review.create(
    length_of_stay: review[0],
    comment: review[1],
    room_type_id: review[2],
    user_id: 2
  )
end
