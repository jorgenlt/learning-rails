import { Controller } from "@hotwired/stimulus"
import Sortable from "sortablejs"

// Connects to data-controller="move-posts"

export default class extends Controller {
  connect() {
    console.log('controller connected');
    Sortable.create(this.element, {
      ghostClass: "ghost",
      animation: 150
    });
  }
}
