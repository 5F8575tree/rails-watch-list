import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed.js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Don't waste your evening", "Don't waste your weekend", "Don't waste your life", "Write a movie list."],
      typeSpeed: 50,
      loop: true
    })
  }
}
