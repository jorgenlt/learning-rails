import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-comments"
export default class extends Controller {
  static targets = ["new", "comments"];

  connect() {
    console.log('toogle-comments connected');
  }

  toggleCreateComment () {
    this.newTarget.classList.toggle("display-none")
  }

  toggleComments () {
    this.commentsTarget.classList.toggle("display-none")
  }
}
