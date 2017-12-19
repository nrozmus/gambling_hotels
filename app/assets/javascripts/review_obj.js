function displayReviewForm() {
  const $form = $('#js-review-form')[0];
  if ($form.style.display === 'none') {
    $form.style.removeProperty('display');
  }
}
