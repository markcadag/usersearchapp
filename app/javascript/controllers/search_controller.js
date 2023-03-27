import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  timeout

  initialize() {
    console.log("initialize");
  }

  search() {
    clearTimeout(this.timeout)
    this.timeout = setTimeout(() => {
      console.log("searching request");
      this.element.requestSubmit();
    }, 300);
  }
}
