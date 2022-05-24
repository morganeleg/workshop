import { Controller } from "@hotwired/stimulus"
import Swiper from 'swiper';


export default class extends Controller {
  connect() {
    this.swiper = new Swiper(this.element, {})
  }
}
