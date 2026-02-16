import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["dropdown", "openIcon", "closeIcon"]

  connect() {
    this.isOpen = false
  }

  toggle() {
    this.isOpen = !this.isOpen
    this.dropdownTarget.classList.toggle("menu-dropdown--open", this.isOpen)
    this.openIconTarget.classList.toggle("hidden", this.isOpen)
    this.closeIconTarget.classList.toggle("hidden", !this.isOpen)
  }

  close() {
    this.isOpen = false
    this.dropdownTarget.classList.remove("menu-dropdown--open")
    this.openIconTarget.classList.remove("hidden")
    this.closeIconTarget.classList.add("hidden")
  }
}
