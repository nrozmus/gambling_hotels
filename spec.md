[X] Must render at least one index page (index resource - 'list of things') via jQuery and an Active Model Serialization JSON Backend.
-Rooms#index uses jQuery to render the selected hotel rooms on the root page

[X] Must render at least one show page (show resource - 'one specific thing') via jQuery and an Active Model Serialization JSON Backend.
-Display a specific review on upon request on the reviews index page

[X] The rails API must reveal at least one has-many relationship in the JSON that is then rendered to the page.
-Home#index, hotel has many rooms

[X] Must use your Rails API and a form to create a resource and render the response without a page refresh.
-Creation of a room type review

[X] Must translate the JSON responses into Javascript Model Objects. The Model Objects must have at least one method on the prototype.
-JS Model Object is Review, it has these attributes: reviewId, lengthOfStay, roomType, comment, createdAt, username
-Prototype method: Review.prototype.postReview, which post the newly created js object on the page, it mirrors the rails display
