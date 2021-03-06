$(function () {
  postReviewForm();
  displayReview();
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

Review.prototype.postReview = function () {
  const formatedCreatedAt = moment(this.createdAt).format(
    'MM/DD/YYYY [at] h:mm a'
  );

  const nightFormated = (this.lengthOfStay >= 2) ? "nights" : "night"

  $('#js-review').append(HandlebarsTemplates['review_display']({
    reviewId: this.reviewId,
    lengthOfStay: this.lengthOfStay,
    comment: this.comment,
    username: this.username,
    createdAt: formatedCreatedAt,
    night: nightFormated,
  }));
};

function postReviewForm() {
  $('#new_review').submit(function (e) {
    e.preventDefault();
    const url = this.action;
    const data = $(this).serialize();

    $.post(url, data, function (reviewInfo) {
      const newReview = new Review(
        reviewInfo.id,
        reviewInfo.length_of_stay,
        reviewInfo.room_type.name,
        reviewInfo.comment,
        reviewInfo.created_at,
        reviewInfo.user.name,
      );

      $('#review_length_of_stay').val('');
      $('#review_comment').val('');
      $('#js-review-form').css('display', 'none');

      newReview.postReview()
    }).fail(function (review) {
      const reviewError = $.parseJSON(review.responseText).errors;
      if (reviewError.length === 2) {
        alert(`${reviewError[0]} & ${reviewError[1]}`);
      } else {
        alert(reviewError);
      }

    });
  });
}

function displayReview() {
  $('.review-link').on('click', function (e) {
    e.preventDefault();
    const id = $(this).data('id');
    $('#jsMoreReviewInfo').empty();
    $.get('/reviews/' + id, function (userReview) {
      $('#review-' + id).html(userReview.comment);
      $('#review-' + id).after(
          $('#jsMoreReviewInfo').append(
          '<li>' +
            'Lenght of stay: ' + userReview.length_of_stay + ' nights' +
          '</li>'
        )
      );
    });
  });
}
