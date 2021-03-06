// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

// require("@rails/ujs").start()
import Rails from "@rails/ujs";
window.Rails = Rails;

// now that Rails is globally defined, I can use it in my code. This allows
// to use Rails.delegate and other utility methods it defines
// require("modal-confirm");

// And now, fire rails:attachBindings and then start Rails, so that its own
// handlers are hooked AFTER mine, since mine must override handleConfirm
if(Rails.fire(document, "rails:attachBindings")) {
  Rails.start();
}

require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import "controllers"
