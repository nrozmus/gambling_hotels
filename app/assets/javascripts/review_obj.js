$(function () {
  postReviewForm();
});

function displayReviewForm() {
  const $form = $('#js-review-form')[0];
  if ($form.style.display === 'none') {
    $form.style.removeProperty('display');
  }
}

function Review(reviewId, lengthOfStay, roomType, comment, createdAt, username) {
  this.reviewId = reviewId;
  this.lengthOfStay = lengthOfStay;
  this.roomType = roomType;
  this.comment = comment;
  this.createdAt = createdAt;
  this.username = username;
}

function postReviewForm() {
  $('#new_review').submit(function (e) {
    e.preventDefault();
    const url = this.action;
    data = $(this).serialize();

    $.post(url, data, function (reviewInfo) {
      const newReview = new Review(
        reviewInfo.id,
        reviewInfo.length_of_stay,
        reviewInfo.room_type.name,
        reviewInfo.comment,
        reviewInfo.created_at,
        reviewInfo.user.name,
      );

      debugger;

    }).fail(function (review) {
      alert("post didn't saved");
    });
  });
}
