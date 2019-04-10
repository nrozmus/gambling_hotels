# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
has many users through reservations, has many rooms through reservations

- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
-Hotel has many rooms
-RoomType has many rooms
-Room belongs to a hotel and room_type and has many reservations, which allow it to have many users
-Address belongs to a user
-User has many addresses and reservations, which allow them to have many rooms
-Reservation belongs to a user and a room

- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
  "room"
  has_many :users, through: :reservations
  has_many :rooms, through: :reservations

- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
-Validate all the attributes for a users home address
-Custom validate a users work address to avoid empty addresses in the db
-Validate the presence of a reservations virtual attributes & have several custom validations to filter bad reservations
-Validate all the attributes for a users

- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [x] Include signup (how e.g. Devise)
- [x] Include login (how e.g. Devise)
- [x] Include logout (how e.g. Devise)
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
- [x] Include form display of validation errors (form URL e.g. /recipes/new)
Methods:
-Room.hotel_rooms, find all the rooms by the hotel id passed in from the parameter
-Address.remove_empty_addresses(user), removes empty work addresses created during registration
-User.from_omniauth(auth), find or creates a user that's registering or logging in with GitHub

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
